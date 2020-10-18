require 'pry'
class Follower
    @@all = []

    attr_reader :name, :age, :life_motto

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
    end

    def self.all
        @@all
    end

    def life_motto
        @life_motto
    end

    def cults
        BloodOath.all.map do |value|
            value.cult
        end
    end
#   def join_cult(cult)
#     BloodOath.new(self, cult)
#     binding.pry
#   end


end