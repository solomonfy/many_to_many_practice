# put your Trip model here

class Trip
    attr_reader :tourist, :landmark
    @@all = []

    def initialize(tourist, landmark)
        @tourist, @landmark = tourist, landmark
        @@all << self
    end

    def self.all
        @@all
    end
    
end