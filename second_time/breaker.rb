class Breaker < Player
	attr_accessor :name, :code, :color_box


	def initialize(name)
		@name = name
		@code
		@color_box = color_box
	end

	def color_box
		super
	end

	def guess(round)
		puts "Give me the guess for ROUND:#{round}\n#{@color_box.join("--").upcase}"
		@code = gets.chomp.downcase.split(" ")
		return @code
	end

	def name
		@name
	end

	# def display
	# 	super
	# end

end