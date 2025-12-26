#pragma once
#include <iostream>

#include "../logger.hpp"

#include "../includes/httplib.h"
#include "../includes/json.hpp"

#include "../dtos/root.dto.hpp"

void root_handler(const httplib::Request& http_request, 
  httplib::Response& http_response) 
{
  RootResponseDto response;
  response.data     = "rest_httplib_cmake_llvm";
  response.status   = "success";
  response.httpCode = 200;

  json parse_response = parseRootResponseDto(response);

  http_response.set_content(parse_response.dump(), "application/json");
  log_request(http_request, http_response);
}