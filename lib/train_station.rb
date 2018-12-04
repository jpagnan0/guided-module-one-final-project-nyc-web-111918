class TrainStation < ActiveRecord::Base
  has_many :train_station_lines
  has_many :train_lines, through: :train_station_lines
end
