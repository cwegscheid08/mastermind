class Board
	attr_accessor :board, :row

	def initialize
		@board = build_board
	end

	def build_board
		@board = []
		@row = {}
		i = 0


		6.times do 
			@row[i] = "C"
			
			i += 1
		end

		10.times do
			@board.push(@row)
		end

		@board
	end

	def display_board
		@board
	end

end

