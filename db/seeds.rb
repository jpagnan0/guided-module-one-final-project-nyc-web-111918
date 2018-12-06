# 15.times do
#   TrainLine.create(
#     name: "#{Faker::Address.city}",
#     color: "#{Faker::Color.color_name}"
#   )
# end
#
# 100.times do
#   TrainStation.create(
#     name: "#{Faker::Address.community}",
#     location: "#{Faker::Address.full_address}",
#     zip_code: "#{Faker::Address.zip}".split("-").first,
#     date_built: "#{Faker::Date.birthday(3,90)}"
#   )
# end
#
# 100.times do
#   TrainStationLine.create(
#     train_station_id: (1..10).to_a.sample,
#     train_line_id: (1..10).to_a.sample
#   )
# end
# TrainLine.create("Montclair-Boonton Line")
# TrainLine.create("Hudson-Bergen Light Rail")
# TrainLine.create("Main/Bergen County Line")
# TrainLine.create("Port Jervis Line")
# TrainLine.create("Morris & Essex Line")
# TrainLine.create("Gladstone Branch")
# TrainLine.create("Northeast Corridor")
# TrainLine.create("North Jersey Coast Line")
# TrainLine.create("Newark Light Rail")
# TrainLine.create("Pascack Valley Line")
# TrainLine.create("Riverline Light Rail")
# TrainLine.create("Meadowlands Rail Line")
# def random_number
#   (1..100).to_a.sample
# end

bowling_green = TrainStation.create(name: "Bowling Green", location: "Downtown", zip_code: "10010", date_built: "1950")
a_line = TrainLine.create(name: "A", color: "blue", start_time: 6, end_time: 22)
c_line = TrainLine.create(name: "C", color: "blue", start_time: 2, end_time: 23)

TrainStationLine.create(train_station: bowling_green, train_line: a_line)
TrainStationLine.create(train_station: bowling_green, train_line: c_line)
