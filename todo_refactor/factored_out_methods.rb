# method used to display a station's lines
# replaced by tp gem
def show_station_lines(lines)
  lines.each do |line|
    #how could we output each line's name here?
    puts "Train Lines for this station: #{line.name}"
  end
end

# method used to display a line's station's
# replaced by tp gem
def show_line_stations(station)
  station.each do |station|
    #how could we output each line's name here?
    puts "Train stations this line passes through: #{station.name},\n#{station.location}"
  end
end
