class TslFinder
  # method used to <TrainStation.find_by name:>
  def find_station(station)
    TrainStation.find_by(name: station)
  end

  # method used to <TrainLine.find_by name:>
  def find_line(line)
    TrainLine.find_by(name: line)
  end

  # method used to find a train station by zip code: <TrainStation.find_by zip_code:>
  def find_station_by_zip_code(zip)
    TrainStation.find_by(zip_code: zip)
  end

  # method that uses a join table through ActiveRecord
  # returning a train station's lines
  def find_station_lines(tsl)
    tsl.train_lines
  end

  # method that uses a join table through ActiveRecord
  # returning a train line's stations
  def find_line_stations(tsl)
    tsl.train_stations
  end

end
# binding.pry
