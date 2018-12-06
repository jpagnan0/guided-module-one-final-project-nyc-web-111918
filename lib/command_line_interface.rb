require 'pry'
class CommandLineInterface
  # main menu
  # 1. List all stations
  # 2. List all lines
  # 3. Find all lines for a specific station (which trains leave from a single station)
  # 4. Find all stations for a specific line (which stations are a long a single line)
  # 5. Enter a zip code to find nearby staions
  def main_menu
    loop do
      print_menu
      input = gets_user_input
      case input
        when "1"
          puts "ALL STATIONS"
          puts TrainStation.all.map { |ts| ts.name }
        when "2"
          puts "ALL TRAINS"
          puts TrainLine.all.map { |tl| tl.name }
        when "3"
          puts "Enter a station's name to the find lines you can take"
          station_name = gets_user_input
          station = find_station(station_name)
          station_lines = find_station_lines(station)
          show_station_lines(station_lines)
        when "4"
          puts "Enter a line to find the stations it passes through"
          line_name = gets_user_input
          line = find_line(line_name)
          line_stations = find_line_stations(line)
          show_line_stations(line_stations)
        when "5"
          puts "Enter a zip code to find nearby trains!"
        when "6"
          break
        else
          puts "Hmm I dont know that"
        end
      end
  end

  def print_menu
    puts "Welcome GardenStateTransit, the command line app that finds your Dirty Jers Train!"
    puts " "
    puts "1. List all stations"
    puts " "
    puts "2. List all lines"
    puts " "
    puts "3. Find all lines for a specific station (which trains leave from a single station)"
    puts " "
    puts "4. Find all stations for a specific line (which stations are a long a single line)"
    puts " "
    puts "5. Enter a zip code to find nearby staions"
    puts " "
    puts "6. To Exit"
    puts " "
  end


  def gets_user_input
    gets.chomp
  end

  def show_station_lines(lines)
    lines.each do |line|
      #how could we output each line's name here?
      puts "Train Lines for this station: #{line.name}"
    end
  end

  def show_line_stations(station)
    station.each do |station|
      #how could we output each line's name here?
      puts "Train stations this line passes through: #{station.name},\n#{station.location}"
    end
  end

  def find_station(station)
    TrainStation.find_by(name: station)
  end

  def find_line(line)
    TrainLine.find_by(name: line)
  end

  def find_station_lines(tsl)
    tsl.train_lines
  end

  def find_line_stations(tsl)
    tsl.train_stations
  end

  # def get_year_built(tsl)
  #   tsl.train_stations.year_built
  # end

  def run
    main_menu
    # lines = find_station(station_name)
    # tl_stations = find_line()
    # s_lines = find_station_lines(tsl)
    # show_lines(lines)
    # find_line(station_instance)
    # binding.pry
  end
  # binding.pry
end
