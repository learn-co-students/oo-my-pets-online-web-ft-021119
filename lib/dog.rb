require 'pry'
class Dog
  attr_accessor :mood #:species,
  attr_reader(:name, :species)
  PETS = []
  DOGS = []
  #@@all = []
    def initialize(name)
      @name = name
      @species = species
      #@@all << self
      @mood = "nervous"
      DOGS << self
      PETS << DOGS
      #binding.pry
    end

end
