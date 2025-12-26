generate-key:
	mkdir ./access_keys/$(node)_$(device)
	ssh-keygen -t ed25519 -C "$(node)@$(device)" -f ./access_keys/$(node)_$(device)/$(node)_$(device)
	echo "/access_keys/$(node)_$(device)" >> .gitignore
