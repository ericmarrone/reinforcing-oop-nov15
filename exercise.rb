class Location
  attr_accessor(:name)
  def initialize(name)
    @name = name
  end
end

class Trip
attr_accessor(:name, :destinations)
  def initialize(name)
    @name = name
    @destinations = []
  end

  def add_location(location)
    @destinations << location
  end

  def travel_log
    puts "Began trip."
    destinations.each_cons(2) do |location|
      puts "Travelled from #{location[0].name} to #{location[1].name}."
    end
    puts "Ended trip."
  end
end

boston = Location.new("Boston")
toronto = Location.new("Toronto")
new_york = Location.new("New York")
chicago = Location.new("Chicago")


my_trip = Trip.new(my_trip)
my_trip.add_location(boston)
my_trip.add_location(toronto)
my_trip.add_location(new_york)
my_trip.add_location(chicago)

puts my_trip.inspect
my_trip.travel_log
