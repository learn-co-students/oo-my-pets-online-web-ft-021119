
require "pry"

class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []
  @@count = 0


  def initialize(name = nil, species)
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species
    @name = name
    @@all << self
    @@count += 1
  end


  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def self.reset_all
    self.all.clear
    @@count = 0
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    # binding.pry
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def buy_cat(name)
    # binding.pry
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    # binding.pry
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets.each do |type, pet|
      #binding.pry
      pet.each {|pet| pet.mood = "nervous"}
      pet.clear
    end

  def list_pets
    cats = 0
    dogs = 0
    fishes = 0
    @pets.each do |types, pets|
      if types == :cats
        cats += pets.length
      elsif types == :dogs
        dogs += pets.length
      elsif types == :fishes
        fishes += pets.length
      end
    end
    "I have #{fishes} fish, #{dogs} dog(s), and #{cats} cat(s)."
  end



  end


end
