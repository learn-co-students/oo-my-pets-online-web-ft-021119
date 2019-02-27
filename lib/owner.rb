require 'pry'
class Owner

  attr_accessor :name, :pets
  attr_reader(:species)
  #attr_writer :name
  OWNERS = []
  #formerly @@all = []

  def initialize(species)
    @name = name
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    OWNERS << self
    #formerly @@all << self

  end

  def self.all
  OWNERS
  end

  def self.count
      self.all.size
  end

  def self.reset_all
    OWNERS.clear
    #binding.pry
    #count = 0
    #@@all = []
    #self.all = []
    #self.all.size = 0

   end

    def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
    end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end


  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

  def say_species
     pets.each do | species,animals|
     any.upcase
     binding.pry
    end
  end


  def walk_dogs
    pets[:dogs].each do |doggy|
    doggy.mood = "happy"
  end
  end

  def play_with_cats
    pets[:cats].each do |kitty|
    kitty.mood = "happy"
    end
  end

def feed_fish
  pets[:fishes].each do |fishy|
  fishy.mood = "happy"
  end
end


def sell_pets
pets.each do |species, animals|
  animals.each do |single|
single.mood = "nervous"
end
end
@pets.clear
end

  def say_species
    "I am a #{species}."
  end

def list_pets
  return "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
end

end
