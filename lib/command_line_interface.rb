require 'pry'
Catpix::print_image("/Users/adamsaland/Developer/flatiron/projects/mod_one/config/logo.png",
  :limit_x => 1.0,
  :limit_y => 0,
  :center_x => true,
  :center_y => true,
  :bg => '#000',
  :bg_fill => true
)
class CommandLineInterface
  def greet
    new_cli = CommandLineInterface.new
    new_cli.run
    puts "Welcome GardenStateTransit, the command line app that finds your Dirty Jers Train!"
  end

  def gets_user_input
    puts "To get started, enter a station name: "
    gets.chomp
  end

  def find_station(station)
    TrainStation.find_by(name: station)
  end

  def find_lines(tsl)
    tsl.train_lines
  end

  def show_lines(lines)
    lines.each do |line|
      #how could we output each line's name here?
      print "#{line.name}"
    end
  end

  def run
    greet
    station_name = gets_user_input
    tsl = find_station(station_name)
    lines = find_lines(tsl)
    show_lines(lines)
    # find_line(station_instance)

    #binding.pry
  end
end
