
require 'pry'
class Cat
  
		attr_accessor :mood
		attr_reader :name


		def initialize(name, mood = "nervous")
			@name = name
		  @mood = mood
			#binding.pry
		end



  # code goes here
end