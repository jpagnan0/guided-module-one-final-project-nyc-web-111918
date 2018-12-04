class TrainLine < ActiveRecord::Base
  has_many :train_station_lines
  has_many :train_stations, through: :train_station_lines
end
