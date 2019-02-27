require 'pry'
class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []
  
  def initialize(species)
    @name = name
    @species = species
    @@all << self 
    @pets = {fishes: [], cats: [], dogs: []}
  end 
  
  def say_species
    "I am a #{@species}."
  end 
  
  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end 
  
  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end 
  
  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end 
  
  def walk_dogs
    @pets[:dogs].map {|dog| dog.mood = "happy"}
  end
  
  def play_with_cats
    @pets[:cats].map {|cat| cat.mood = "happy"}
  end
  
  def feed_fish
    @pets[:fishes].map {|fish| fish.mood = "happy"}
  end
  
  def sell_pets
    @pets.each do |animals, pets|
      pets.each do |pet|
        pet.mood = "nervous"
      end 
    end
    @pets.clear
  end 
  
  def list_pets
    animal_count = []
    iterator = 0 
    @pets.each do |animals, pets|
      animal_count << pets.length  
    end 
    "I have #{animal_count[0]} fish, #{animal_count[2]} dog(s), and #{animal_count[1]} cat(s)."
  end 
  
  def self.all 
    @@all 
  end
  
  def self.count
    @@all.length 
  end
  
  def self.reset_all
    @@all.clear
  end
  
end