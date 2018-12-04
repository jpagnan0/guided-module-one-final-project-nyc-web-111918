10.times do
  TrainLine.create(
    name: "#{Faker::Address.city}",
    color: "#{Faker::Color.color_name}"
  )
end

10.times do
  TrainStation.create(
    name: "#{Faker::Address.community}",
    location: "#{Faker::Address.full_address}",
    year_built: "#{Faker::Date.birthday(3,90)}"
  )
end

10.times do
  TrainStationLine.create(
    train_station_id: (1..10).to_a.sample,
    train_line_id: (1..10).to_a.sample
  )
end

# def random_number
#   (1..100).to_a.sample
# end
