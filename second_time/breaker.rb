class Breaker < Player
	attr_accessor :name, :code, :color_box


	def initialize(name = "Computer", code = [0,0,0,0])
		super(name, code)
	end

	def is_computer?
		super
	end

	def color_box
		super
	end

	def guess(round)
		puts "Give me the guess for ROUND:#{round}\n#{@color_box.join("--").upcase}"
		@code = gets.chomp.downcase.split(" ")
		return @code
	end

	def computer_guess(round)
		puts "\nTHE COMPUTER IS THINKING...\n\n"
		@code = randomize(@code)
		return @code
	end

	def name
		@name
	end


	private

	def randomize(code)
		super
	end

	# def display
	# 	super
	# end

end