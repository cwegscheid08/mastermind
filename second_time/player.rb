class Player
	attr_accessor :name, :code

	def initalize(name, code)
		@name = name
		@code = code
	end

	def display_player
		puts "This is #{@name} and their code is #{code}."
	end

end