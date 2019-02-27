class Dog
  attr_accessor :name, :species, :mood
  @@all = []
    def initialize(name)
      @name = name
      @species = species
      @@all << self
      @mood = "nervous"
    end

end
