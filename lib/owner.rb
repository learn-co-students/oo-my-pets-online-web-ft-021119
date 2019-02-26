require "pry"
class Owner
  attr_accessor :pets, :name

  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name

    @pets = {fishes: [], cats: [], dogs: []}

    @species = "human"

    @@all << self
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
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
    @pets[:dogs].each do |dog|
      dog.mood = "nervous"
    end

    @pets[:cats].each do |cat|
      cat.mood = "nervous"
    end

    @pets[:fishes].each do |fish|
      fish.mood = "nervous"
    end

    @pets.clear
  end

  def list_pets
    fish_quantity = @pets[:fishes].count
    dog_quantity = @pets[:dogs].count
    cat_quantity = @pets[:cats].count
    "I have #{fish_quantity} fish, #{dog_quantity} dog(s), and #{cat_quantity} cat(s)."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end
end
