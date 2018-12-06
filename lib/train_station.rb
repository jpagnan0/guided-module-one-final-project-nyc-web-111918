require 'pry'
class TrainStation < ActiveRecord::Base
  has_many :train_station_lines
  has_many :train_lines, through: :train_station_lines

  def find_running_trains(time)
    self.train_lines.select do |line|
      line.start_time <= time && time <= line.end_time
    end
  end
  # binding.pry
end #End TrainStation class

=begin
___________________________________________________
| CLASS          | RELATION  | TABLE              |
|----------------|-----------|--------------------|
| TrainStation   | *has_many*| train_lines        |
|----------------|-----------|--------------------|
|                | *through* | train_line_stations|
|----------------|-----------|--------------------|
|________________|___________|____________________|
=end


# class UserTrainStation < TrainStation
#   # binding.pry
# end
