require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
zooname = Zoo.new("Some Zoo", "Seattle") #(name, location)
newyorkzoo = Zoo.new("NY Zoo", "NY") #(name, location)
sfzoo = Zoo.new("San Francisco Zoo", "SF") #(name, location)
chinesezoo = Zoo.new("China Zoo", "Beijing") #(name, location)

bubbles = Animal.new("Cat","Bubbles",30) #(species, nickname, weight)
whiskers = Animal.new("Cat","Whiskers",15) #(species, nickname, weight)
zuzu = Animal.new("Monkey","Peanuts",60) #(species, nickname, weight)
haramabe = Animal.new("Ape","harambe",120) #(species, nickname, weight)



binding.pry
puts "done"
