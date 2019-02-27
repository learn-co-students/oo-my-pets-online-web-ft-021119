require 'pry'
class Owner

  attr_accessor :name, :pets, :species
  @@all = []
  def initialize(name)
    @name = name
    @species = species
    @pets = [] #{ , , }
    @@all << self
  end

  def self.all
  @@all
  end

  def self.count
    self.all.size
  end

  def self.reset_all
    #@@all = []
    #self.all = []
    #self.all.size = 0
    #binding.pry
   end

  # def species= (species)
  # end
    # code goes here

end
