require_relative '../config/environment.rb'

# create your variables and/or write any tests here


3.times do
    Tourist.new(Faker::Name.first_name )
end

eifl = Landmark.new("Eiffel Tower", "Paris")
c_park = Landmark.new("Central Park", "New york")
lib = Landmark.new("Statue of Liberty", "New york")
china = Landmark.new("The Chinesse great wall", "China")

trip1 = Trip.new(Tourist.all[0], eifl)
trip2 = Trip.new(Tourist.all[1], eifl)
trip3 = Trip.new(Tourist.all[2], eifl)
trip4 = Trip.new(Tourist.all[0], lib)
trip5 = Trip.new(Tourist.all[0], china)
trip6 = Trip.new(Tourist.all[1], china)

# Tourist.all[2].never_visited
Landmark.find_by_city("new york")
binding.pry
