class Player
	attr_accessor :name, :code, :color_box
	

	def initialize(name = "Computer", code = [0,0,0,0])	
		@name = name
		@code = code
		@color_box = color_box
		is_computer?()
	end

	def is_computer?
		@name == "Computer" ? @code = randomize(@code) : ""
	end

	def color_box
		@color_box = ["red", "green", "blue", "yellow", "orange", "purple"]
	end

	def display
		puts "This is #{@name} and their code is #{code}."
	end


	private


end