class TrainLine < ActiveRecord::Base
  has_many :train_station_lines
  has_many :train_stations, through: :train_station_lines
end # End TrainLine class

=begin
  _______________________________________________
  | CLASS      | RELATION  | TABLE              |
  |------------|-----------|--------------------|
  | TrainLine  | *has_many*| train_stations     |
  |------------|-----------|--------------------|
  |            | *through* | train_line_stations|
  |------------|-----------|--------------------|
  |____________|___________|____________________|
=end
