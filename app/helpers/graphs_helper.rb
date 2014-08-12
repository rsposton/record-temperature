module GraphsHelper
  def get_graph_labels
    array_of_labels=[]
    start = 48.hours.ago.in_time_zone("Pacific Time (US & Canada)").beginning_of_hour
    finish = Time.now.in_time_zone("Pacific Time (US & Canada)").beginning_of_hour
    while(start <= finish) do
      array_of_labels << start.to_s
      start += 1.hour
    end
    array_of_labels
  end
  def get_readings
    array_of_readings=[]
    start = 48.hours.ago.beginning_of_hour
    finish = Time.now.beginning_of_hour
    while(start <= finish) do
      last_hour_reading = Reading.where("recorded_at between ? and ?", start, start + 1.hour)
      array_of_readings << (last_hour_reading.sum(:temperature)  || 0) /  (last_hour_reading.count > 0 ? last_hour_reading.count : 1)
      start += 1.hour
    end
    array_of_readings
  end
end
