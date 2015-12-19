require 'net/http'
require 'json'

SCHEDULER.every '20s', :first_in => '10s' do
  hirtenweg = "de:8212:403"

  data_hirtenweg = get_update_item(hirtenweg)

  send_event('departures_hirtenweg', data_hirtenweg)
end

def reformat_time(time_str)
  if time_str == "0"
    time_str = "sofort"
  end
  return time_str
end

def get_update_item(stop_id)
  logger = Logger.new(STDOUT)
  logger.level = Logger::DEBUG
  parsed_request = kvv_request(stop_id)
  departures = parsed_request["departures"]
  departures.map { |departure|
    departure["time"] = reformat_time(departure["time"])
  }

  return { items: departures, stop: parsed_request["stopName"] }
end


def kvv_request(stop_id)
  uri = URI.parse("http://live.kvv.de/webapp/departures/bystop/" + stop_id + "?key=377d840e54b59adbe53608ba1aad70e8&maxInfos=5")
  resp = Net::HTTP.get(uri)
  parsed = JSON.parse(resp)
  return parsed
end
