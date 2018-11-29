class Breaker < Player
	attr_accessor :name, :code, :color_box


	def initialize(name)
		@name = name
		@code
	end

	def guess
		puts "Give me four colors."
		@code = gets.chomp.downcase.split(" ")
		return @code
	end

	# def display
	# 	super
	# end

end