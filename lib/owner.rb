require 'pry'

class Owner

		attr_accessor :name, :pets
		attr_reader :species
		

		@@all = []

			def initialize(species)
				@species = species

				@@all << self
				@pets = {:fishes => [], :dogs => [], :cats => []}


			end

			def self.all
				@@all
			end

			def self.count
				@@all.length
			end

			def self.reset_all
				@@all =[]
			end

			def say_species
				return "I am a human."
			end
			def buy_fish(fish)
           pet = Fish.new(fish)
           @pets[:fishes] << pet
            
			end

			def buy_dog(dog)
           pet = Dog.new(dog)
           @pets[:dogs] << pet
            
			end

			def buy_cat(cat)
           pet = Cat.new(cat)
           @pets[:cats] << pet
            
			end

			def walk_dogs
            dog = self.pets[:dogs]
            dog[0].mood = "happy"
          
				#binding.pry
			end

			def play_with_cats
            cat = self.pets[:cats]
            cat[0].mood = "happy"
          
				#binding.pry
			end

			def feed_fish
            fish = self.pets[:fishes]
            fish[0].mood = "happy"
          
				#binding.pry
			end

			def sell_pets
            
            	#binding.pry

            	@pets.each do |each_pet, pet_info|
            	#binding.pry
            	pet_info.each do |detail|
				detail.mood = "nervous"


            		#binding.pry
            		
            		end
				end
				@pets ={}
			
			end

			def list_pets
	return "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
		
		end
		

			







  # code goes here
end