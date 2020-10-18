require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
manson_family = Cult.new("Manson Family", "Los Angeles", 1995, "We're all FAMILY", 10)
heavens_gate = Cult.new("Heaven's Gate", "San Diego", 1972, "Drink The Kool-Aid", 20)
cod = Cult.new("Children Of God", "NYC", 1986, "????", 30)

erick = Follower.new("Erick", 21, "Trife")
vita = Follower.new("Vita", 22, "No Gracias")
rico = Follower.new("Rico", 21, "Trizzy")


bloodoath1 = BloodOath.new(erick, manson_family, 20200602)
bloodoath2 = BloodOath.new(vita, heavens_gate, 20200612)
bloodoath3 = BloodOath.new(rico, cod, 20200120)






# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


puts "FOLLOWER"
puts "Knows Follower Name"
pp erick.name
puts "Knows Follower Age"
pp erick.age
puts "Knows All Followers"
pp Follower.all == [erick, vita, rico]
puts "Knows Followers Life Motto"
pp erick.life_motto
puts "Returns An Array Of All A Followers Cults"
pp erick.cults



puts " "
puts " "

puts "BLOODOATH"

puts "Knows initiation Date"
pp bloodoath1.initiation_date
puts "Knows All People In A Cult"
pp BloodOath.all

puts " "
puts " "

puts "CULT"
puts "Knows Cults Name"
pp manson_family.name
puts "Knows Cult Location"
pp heavens_gate.location
puts "Knows Cults Founding Year"
pp cod.founding_year
puts "Knows Cults Slogan"
pp heavens_gate.slogan
puts "Knows Cult Population"
pp manson_family.cult_pop
puts "Returns Array Of All Cults"
pp Cult.all == [manson_family, heavens_gate, cod]
puts "Can Find Cult By Name"
pp Cult.find_by_name("Manson Family") == manson_family
puts "Can Find Cult By Location"
pp Cult.find_by_location("San Diego") == heavens_gate
puts "Can Find Cult By Founding Year"
pp Cult.find_by_founding_year(1986) == cod


puts " "
puts " "

# binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits