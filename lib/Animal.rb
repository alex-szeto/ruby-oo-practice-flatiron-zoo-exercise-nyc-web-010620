class Animal

    attr_reader :species, :nickname
    attr_accessor :weight

    @@all = []

    def initialize(species, nickname, weight)
        @@all << self
        @species = species # An animal should be instantiated with the species (e.g. "Cat", "Dog", "Rat"), a numerical weight and a nickname. Keep in mind that the animal's species and nickname should not be able to change, but its weight can.
        @nickname = nickname # Animal#nickname should return the nickname of the animal.
        @weight = weight # Animal#weight should return the weight of the animal.
    end

    def self.all #Animal.all should return an array of all the animal instances.
        @@all
    end

    def zoo# Animal#zoo should return the zoo instance that the instance belongs to.
        Zoo.all.find{|zoo| zoo.animals.include?(self)}
    end

    def self.find_by_species# Animal.find_by_species should take in an animal's species as an argument and return an array of all the animals, which are of that species.
        @@all.select{|animal| animal.species == self.species}
    end
    

end
