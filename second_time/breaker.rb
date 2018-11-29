class Breaker < Player
	attr_accessor :name, :code

	def initialize(name, code)
		@name = name
		@code = code
	end

	def guess
		puts "Give me four colors."
		code = gets.chomp.downcase.split(" ")
		puts "GUESS: #{code}"
	end



end