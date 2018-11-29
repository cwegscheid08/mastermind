class Breaker < Player
	attr_accessor :name, :code, :color_box

	def initialize(name, code) 
		@name = name
		@code = code
	end

	def guess
		puts "Give me four colors."
		@code = gets.chomp.downcase.split(" ")
	end

	# def display
	# 	super
	# end

end