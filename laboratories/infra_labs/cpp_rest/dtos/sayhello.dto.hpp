#pragma once

#include <string>
#include <iostream>

#include "../includes/json.hpp"
#include "../includes/httplib.h"


using json = nlohmann::json;

struct SayHelloRequestDto
{
  std::string name;
};

struct SayHelloResponseDto 
{
  int     httpCode;
  std::string data;
  std::string status;
};



json parseSayHelloResponseDto(const SayHelloResponseDto& dto)
{
  json response_by_dto;
  try {
    response_by_dto["data"]     = dto.data;
    response_by_dto["status"]   = dto.status;
    response_by_dto["httpCode"] = dto.httpCode;

  } catch (std::exception& err_message) {
    std::cout << err_message.what() << "\n";

    response_by_dto["data"]     = nullptr;
    response_by_dto["status"]   = "Internal Server Error";
    response_by_dto["httpCode"] = 500;
  }
  
  return response_by_dto;
}