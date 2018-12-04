100.times do
  TrainLine.create(name: "#{Faker::Address.community}", color: "#{Faker::Color.color_name}")
end

100.times do
  TrainStation.create(name: "#{Faker::Address.community}", location: "#{Faker::Address.full_address}", year_built: "#{Faker::Date.birthday(3,90)}")
end

100.times do
  TrainStationLine.create(station_id: (1..100).to_a.sample, line_id: (1..100).to_a.sample)
end

# def random_number
#   (1..100).to_a.sample
# end
