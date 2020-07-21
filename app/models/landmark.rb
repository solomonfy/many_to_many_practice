# put your Landmark model here

class Landmark
    attr_reader :name, :city
    @@all = []

    def initialize(name, city)
        @name, @city = name, city
        @@all << self
    end

    def self.all
        @@all
    end

    def trips
        Trip.all.find_all {|trip| trip.landmark == self}
    end

    def tourists
        self.trips.map {|trip| trip.tourist}
    end

    def self.find_by_city(city)
        Landmark.all.find_all {|land| land.city.downcase.gsub(" ","") == city.downcase.gsub(" ","")}
    end

    def self.most_visited_landmark
        self.all.max_by {|land| land.trips.count}        
    end








end