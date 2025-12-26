#pragma once

#include <map>
#include <ctime>
#include <chrono>
#include <sstream>
#include <iostream>

#include "includes/httplib.h"
#include "includes/json.hpp"


using json = nlohmann::json;

std::string current_timestamp() 
{
  auto now = std::chrono::system_clock::now();

  std::time_t t = std::chrono::system_clock::to_time_t(now);
  std::stringstream ss;

  ss << std::put_time(std::localtime(&t), "%Y-%m-%d %H:%M:%S");
  return ss.str();
}

std::map<std::string, std::string> 
  parse_query_params(const std::string &target) 
{
  std::map<std::string, std::string> params;
  auto pos = target.find('?');
  if (pos == std::string::npos) return params;

  std::string query = target.substr(pos + 1);
  std::stringstream ss(query);
  std::string kv;
  while (std::getline(ss, kv, '&')) 
  {
    auto eq = kv.find('=');
    if (eq != std::string::npos) 
      params[kv.substr(0, eq)] = kv.substr(eq + 1);
  }
  return params;
}

void log_request(const httplib::Request &req, 
  const httplib::Response &res) 
{
  json log_json;

  log_json["timestamp"]       = current_timestamp();
  log_json["remote_ip"]       = req.remote_addr;
  log_json["method"]          = req.method;
  log_json["endpoint"]        = req.path;
  log_json["query_params"]    = parse_query_params(req.target);
  log_json["request_body"]    = req.body;
  log_json["response_status"] = res.status;
  log_json["response_body"]   = res.body;

  std::cout << log_json.dump(4) << "\n";
}