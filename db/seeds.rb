15.times do
  TrainLine.create(
    name: "#{Faker::Address.city}",
    color: "#{Faker::Color.color_name}"
  )
end

100.times do
  TrainStation.create(
    name: "#{Faker::Address.community}",
    location: "#{Faker::Address.full_address}",
    zip_code: "#{Faker::Address.zip}".split("-").first,
    year_built: "#{Faker::Date.birthday(3,90)}"
  )
end

100.times do
  TrainStationLine.create(
    train_station_id: (1..10).to_a.sample,
    train_line_id: (1..10).to_a.sample
  )
end

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
