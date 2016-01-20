require_relative 'kvv'

SCHEDULER.every '20s', :first_in => 0 do
  auerstr_id = "de:8212:11"

  data_auerstr = get_update_item(auerstr_id)

  send_event('departures_auerstr', data_auerstr)
end
