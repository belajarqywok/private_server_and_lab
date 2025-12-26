#!/bin/bash
set -e

systemctl stop k3s 2>/dev/null || true
systemctl stop k3s-agent 2>/dev/null || true

systemctl disable k3s 2>/dev/null || true
systemctl disable k3s-agent 2>/dev/null || true

rm -f /etc/systemd/system/k3s.service
rm -f /etc/systemd/system/k3s-agent.service
systemctl daemon-reload

rm -f /usr/local/bin/k3s
rm -f /usr/local/bin/k3s-killall.sh
rm -f /usr/local/bin/k3s-uninstall.sh
rm -f /usr/local/bin/kubectl
rm -f /usr/local/bin/crictl
rm -f /usr/local/bin/ctr

sudo umount -f /var/lib/kubelet/pods/*/volumes/kubernetes.io~projected/*
sudo umount -f /var/lib/kubelet/pods/*/volumes/kubernetes.io~secret/*
sudo umount -f /var/lib/kubelet/pods/*/volumes/kubernetes.io~configmap/*
sudo lsof +D /var/lib/kubelet/pods

rm -rf /etc/rancher/k3s
rm -rf /var/lib/rancher/k3s
rm -rf /var/lib/kubelet
rm -rf /run/k3s
rm -rf /run/flannel

rm -rf ~/.kube
rm -rf /root/.kube

for table in filter nat mangle; do
    for chain in $(iptables -t $table -S | grep -E 'KUBE-|CNI-' | awk '{print $2}'); do
        iptables -t $table -F $chain
        iptables -t $table -X $chain
    done
done

ip link delete cni0 2>/dev/null || true
ip link delete flannel.1 2>/dev/null || true

echo "uninstall succes"
