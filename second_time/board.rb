class Board
	attr_accessor :board, :row
	# attr_reader :round

	def initialize
		# @@round
		@board = {}
		set_row
		build_board
	end





	def display
		puts @board
	end

	def build_board
		# puts "ROW: #{row}"
		@board = {round_0: @row}
		# @board[:round_1] = row
		# puts "BOARD: #{board}"
	end

	def set_row(guess = [" ", " ", " ", " "], count = 0, location = 0)
		# puts "GUESS: #{guess}"
		@row = { guessed_right: count, one: guess[0], two: guess[1], three: guess[2], four: guess[3], correct_spot: location }
		# puts "ROW: #{@row}"

		# add_to_board(@row)
	end

	def add_to_board(row, round)
		puts "ADD SPOT: #{row} BOARD: #{@board} ROUND: #{round}"
		@board["round_#{round}"] = row
		puts "ADDED BOARD: #{@board}"
	end

	def display_board
		puts @board
	end

end
