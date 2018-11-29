class Player
	attr_accessor :name, :code, :color_box

	def initalize(name, code)
		@name = name
		@code = code
		color_box 
	end

	def color_box
		@color_box = ["red", "green", "blue", "yellow", "orange", "purple"]
	end

	def display
		puts "This is #{@name} and their code is #{code}."
	end


	private


end