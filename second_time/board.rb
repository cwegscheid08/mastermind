class Board
	attr_accessor :board, :row


	def initialize
		@board = {}
		set_row
		build_board
	end

	def display
		puts @board
	end

	def build_board
		@board = {"ROUNDS " => @row}
	end

	def set_row(guess = [" ", " ", " ", " "], count = 0, location = 0)
		guess = guess.map { |x| x.split("").first.upcase}
		@row = { "guessed_right" => count, "1" => guess[0], "2" => guess[1], "3" => guess[2], "4" => guess[3], "correct_spot" => location }
	end

	def add_to_board(row, round)
		@board["ROUND #{round}"] = row
	end

	def display
		print "\n\n\n\n"
		@board.to_a.each { |x| print "#{x[0]}    "; x[1].each_pair { |y| print "#{y.join("-")}   "}; puts "" }
	end

	def four_spots?(round)
		@board["ROUND #{round}"]["correct_spot"] == 4 ? true : false
	end

end
