class Player
	attr_accessor :name, :code, :color_box

	def initalize(name, code)
		@name = name
		@code = code
		@color_box 
	end

	def color_box
		@color_box = ["red", "green", "blue", "yellow", "orange", "purple"]
	end

	def display_player
		puts "This is #{@name} and their code is #{code}."
	end


	private

	# def color_bank
	# 	colors = ["red", "green", "blue", "yellow", "orange", "purple"]
	# 	return colors
	# end

end