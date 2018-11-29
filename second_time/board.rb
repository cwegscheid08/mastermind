class Board
	attr_accessor :board, :row
	# attr_reader :round

	def initialize
		# @@round
		@board = {}
		set_row()
	end





	def display
		puts @board
	end

	def set_row(guess = " ", count = 0, location = 0)
		# puts "GUESS: #{guess}"
		if guess == " "
			@row = { guessed_right: count, one: guess, two: guess, three: guess, four: guess, correct_spot: location }
		else
			@row = { guessed_right: count, one: guess[0], two: guess[1], three: guess[2], four: guess[3], correct_spot: location }
		end
		# puts "ROW: #{@row}"
		set_board(@row)
	end


	def set_board(row)
		puts "ROW: #{row}"
		# @board = {round_1: row}
		@board[:round_1] = row
		puts "BOARD: #{board}"
	end

	def display_board
		puts @board
	end

end
