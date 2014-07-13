module Transformable

	def set_stages(stages)
		@stages = stages
		@currentStage = 0
	end

	def get_stage
		puts "#{name} is in #{@stages[@currentStage]} stage"
	end

	def grow
		@currentStage += 1
		get_stage
	end

end

class Amphibian
	attr_reader :name 

	def initialize(name, poisonous)
		@name = name
		@poisonous = poisonous
	end

	def swim
		puts "#{@name} is swimming."
		puts "Watch out, #{@name} is poisonous" if @poisonous
	end

end

class Frog < Amphibian
	include Transformable
end

class Insect
	attr_reader :name 

	def initialize(name, pest)
		@name = name
		@pest = pest
	end

	def move
		@pest ? (puts "Catch #{@name}!") : (puts "Isn't #{@name} cute?")
	end
end

class Moth < Insect
	include Transformable
end

frog1 = Frog.new("Froggy the Frog", false)
frog1.set_stages(%w(egg tadpole froglet frog))
frog1.get_stage # => "Froggy the Frog is in egg stage"
frog1.grow # => "Froggy the Frog is in tadpole stage"
frog1.swim # => "Froggy the Frog is swimming."

moth1 = Moth.new("Mothy the Moth", true)
moth1.set_stages(%w(egg larva pupae moth))
moth1.grow # => "Mothy the Moth is in larva stage."
moth1.move # => "Catch Mothy the Moth!"