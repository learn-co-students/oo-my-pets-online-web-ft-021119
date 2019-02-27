require 'pry'
class Cat
  attr_accessor :mood #:species,
  attr_reader(:name, :species)
    PETS = []
    CATS = []
    #@@all = []
    attr_reader (:name)
    def initialize(name) #, {mood => nervous})
      @name = name
      #@species = species
      #@@all << self
      CATS << self
      @mood = "nervous"
      PETS << CATS
      #binding.pry
    end

# def say_species
end
