class Zoo

    attr_accessor :location, :name, :animals

    @@all = []

    def initialize(name, location)
        @name = name
        @location = location # Zoo#location should return the location of the zoo instance.
        @animals = []
        @@all << self
    end

    def animal_species # Zoo#animal_species should return an array of all the species (as strings) of the animals in the zoo. However, if you have two dogs, it should only return one "Dog" string (aka an unique array).
        @animals.select{|animal| animal.species}.uniq
    end

    def find_by_species(search) # Zoo#find_by_species should take in an animal's species as an argument and return an array of all the animals in that zoo, which are of that species.
        Animals.all.select{|animal| animal.species == search}
    end

    def animal_nicknames(search)# Zoo#animal_nicknames should return an array of all the nicknames of animals that a specific instance of a zoo has.
        Animals.all.select{|animal| animal.nickname == search}
    end

    def self.find_by_location(search)# Zoo.find_by_location should take in a location as an argument and return an array of all the zoos within that location.
        @@all.select{|zoo| zoo.location == search}
    end

    def self.all
        @@all
    end

end
