class Breaker < Player
	attr_accessor :name, :code

	def initialize(name, code)
		@name = name
		@code = code
	end

	# def display_player
	# 	super
	# end
end