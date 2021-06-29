require "pry"

class Animal
    @@all = []
    attr_accessor :species, :name
    attr_reader :age

    def initialize(species, name, age)
        @species = species
        @name = name
        @age = age
        @@all << self
    end

    def say_species 
        return "Hi! I'm a #{self.species}"
    end

    def self.all
        @@all
    end

end

animal1 = Animal.new("cat", "Tom", 5)
animal2 = Animal.new("mouse", "Jerry", 3)

binding.pry