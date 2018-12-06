require 'pry'
class CommandLineInterface
  # Allows the user to select an option from @print_menu
  # displays the using the users input to manipute
  # database through active record
  def main_menu
    tp.set TrainStation, :name, :location, :zip_code, :date_built
    tp.set TrainLine, :name, :color
    loop do
      print_menu
      input = gets_user_input
      system("clear")
      case input
        when "1"
          puts "Enter the number of stations to list:"
          number = gets_user_input.to_i
          all_trains = TrainStation.all.size
          if number < all_trains
            tp TrainStation.first(number)
          elsif number >= all_trains
            tp TrainStation.all
          else
            break
          end
        when "2"
          tp TrainLine.all
        when "3"
          puts "Enter a station's name to the find lines you can take:"
          station_name = gets_user_input
          station = find_station(station_name)
          station_lines = find_station_lines(station)
          tp station_lines
        when "4"
          puts "Enter a line to find the stations it passes through:"
          line_name = gets_user_input
          line = find_line(line_name)
          line_stations = find_line_stations(line)
          tp line_stations
        when "5"
          puts "Enter the name of the station:\n"
          s_name = gets_user_input
          puts "Enter a location of the form: \n(6249 Smitham Streets, West Andremouth, UT 07424):\n"
          location = gets_user_input
          puts "Enter a 5 digit zip code of the form (97496)\n"
          z_code = gets_user_input
          puts "Enter the date the station was built in the form (YYYY-MM-DD)\n"
          date_built = gets_user_input
          TrainStation.create(name: s_name, location: location, zip_code: z_code, date_built: date_built)
          tp TrainStation.find_by(name: s_name)
        when "6"
          puts "Enter a station name that no longer services the good people of NJ,\nand should be deleted"
          closed_s_name = gets_user_input
          closed_s_id = TrainStation.find_by(name: closed_s_name).id
          tp TrainStation.destroy(closed_s_id)
        when "7"
          puts "Enter a zip code to find nearby trains!"
          zip = gets_user_input
          z_code = find_station_by_zip_code(zip)
          tp z_code
        when "8"
          puts "Bye Bye!"
          break
        else
          puts "Hmm I dont know that"
      end
    end
  end
  # Displays options for the user to select
  def print_menu
    puts "Welcome GardenStateTransit, the command line app that finds your Dirty Jers Train!"
    puts " "
    puts "Enter the number corresponding with your choice:"
    puts " "
    puts "1. List all or just some stations stations"
    puts " "
    puts "2. List all lines"
    puts " "
    puts "3. Find all lines for a specific station (which trains leave from a single station)"
    puts " "
    puts "4. Find all stations for a specific line (which stations are a long a single line)"
    puts " "
    puts "5. Create a new station!"
    puts " "
    puts "6. Know of a station that is no longer in service?"
    puts " "
    puts "7. Enter a zip code to find nearby staions"
    puts " "
    puts "8. To Exit"
    puts " "
  end
  #helper method to know when im getting users input
  def gets_user_input
    gets.chomp
  end
  # method used to <TrainStation.find_by name:>
  def find_station(station)
    TrainStation.find_by(name: station)
  end
  # method used to <TrainLine.find_by name:>
  def find_line(line)
    TrainLine.find_by(name: line)
  end
  # method that uses a join table through ActiveRecord
  # returning a train station's lines
  def find_station_lines(tsl)
    tsl.train_lines
  end
  # method that uses a join table through ActiveRecord
  # returning a train line's stations
  def find_line_stations(tsl)
    tsl.train_stations
  end
  # method used to find a train station by zip code: <TrainStation.find_by zip_code:>
  def find_station_by_zip_code(zip)
    TrainStation.find_by(zip_code: zip)
  end
  # runner method to fire up all the fun!
  def run
    njt = Artii::Base.new
    puts njt.asciify('NJTransit')
    sleep 0.5
    main_menu
  end
end
