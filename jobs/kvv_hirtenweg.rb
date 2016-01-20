require_relative 'kvv'

SCHEDULER.every '20s', :first_in => '10s' do
  hirtenweg_id = "de:8212:403"

  data_hirtenweg = get_update_item(hirtenweg_id)

  send_event('departures_hirtenweg', data_hirtenweg)
end
