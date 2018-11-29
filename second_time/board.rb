class Board
	attr_accessor :board, :row
	# attr_reader :round

	def initialize
		# @@round
		set_row()
		set_board()
	end





	def display
		puts @board
	end


	def add_row

	end

	def set_row
		@row = { guessed_right: 0, "1": " ", "2": " ", "3": " ", "4": " ", correct_spot: 0 }
		# begin
		# 	@row = { guessed_right: 0, "1": " ", "2": " ", "3": " ", "4": " ", correct_spot: 0 }
		# rescue StandardError=>e
		# 	puts "ERROR: #{e}"
		# end
	end


	def set_board
		@board = {round_1: @row}
		# begin
		# 	@board = {"round_1" => @row}
		# rescue StandardError=>e
		# 	puts "ERROR: #{e}"
		# end
	end


	def display_board
		puts @board
	end

end
