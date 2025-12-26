#include <map>
#include <ctime>
#include <chrono>
#include <sstream>
#include <iostream>

#include "logger.hpp"

#include "includes/httplib.h"
#include "includes/json.hpp"

#include "handlers/root.handler.hpp"


using json = nlohmann::json;

int main() 
{
	httplib::Server svr;

  svr.Get("/hello", root_handler);

  svr.Post("/echo", [](const httplib::Request& req, httplib::Response& res) {
    json received;
    try { received = json::parse(req.body); } 
		catch (json::parse_error& e) {
      json error_json;
      error_json["error"] = "Invalid JSON";
      res.status = 400;
      res.set_content(error_json.dump(), "application/json");
      return;
    }

    json response;
    response["you_sent"] = received;
    response["status"] = "ok";
    res.set_content(response.dump(), "application/json");
    log_request(req, res);
  });

  std::cout << "Server running at http://localhost:8080\n";
  svr.listen("0.0.0.0", 8080);
}