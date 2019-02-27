class Fish
  attr_accessor :mood #:species,
  attr_reader(:name, :species)
  #@@all = []
  PETS = []
  DOGS = []

  def initialize(name)
      @name = name
      @species = species
      #@@all << self
      @mood = "nervous"
      DOGS << self
      PETS << DOGS

    end

end
