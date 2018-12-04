class TrainStationLine < ActiveRecord::Base
  belongs_to :train_station
  belongs_to :train_line
end
