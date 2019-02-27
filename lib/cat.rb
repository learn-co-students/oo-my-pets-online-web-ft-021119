class Cat
    attr_accessor :name, :species, :mood
    @@all = []
    def initialize(name) #, {mood => nervous})
      @name = name
      #@species = species
      @@all << self
      @mood = "nervous"
    end

end
