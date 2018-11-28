class Master < Player
	attr_accessor :name, :code
	
	def initialize(name = "Comp", code = [0,0,0,0])	
		@name = name
		@code = code
	end

	# def display_player
	# 	super
	# end

end