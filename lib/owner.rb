require 'pry'

class Owner

  attr_accessor :pets, :name
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    @species= "human"
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all = []
  end

  def species
    @species
  end

  def say_species
    "I am a #{@species}."
  end

  def name=(name)
    @name = name
  end

  def pets
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
    #binding.pry
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |species, pets|
      pets.each do |pet| pet.mood = "nervous"
      end
    end
    @pets.clear
  end

  def list_pets
    num_dogs = @pets[:dogs].size
    num_fish = @pets[:fishes].size
    num_cats = @pets[:cats].size
    puts "I have #{num_fish} fish, #{num_dogs} dog(s), and #{num_cats} cat(s)."
  end


end
