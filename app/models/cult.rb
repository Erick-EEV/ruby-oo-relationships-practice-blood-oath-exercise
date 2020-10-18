class Cult
    attr_reader :name, :location, :founding_year, :slogan
    attr_accessor :cult_pop
    @@all = []
    def initialize(name, location, founding_year, slogan, cult_pop=0)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @cult_pop = cult_pop
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_name(cult_name)
        self.all.find do |cult|
            cult_name == cult.name
        end
    end

    def self.find_by_location(location)
        self.all.find do |cult|
            location == cult.location
        end
    end

    def self.find_by_founding_year(founding_year)
        self.all.find do |cult|
            founding_year == cult.founding_year
        end
    end

    
end