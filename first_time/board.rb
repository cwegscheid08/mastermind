class Board
	attr_accessor :board, :row, :switch, :round

	def initialize(round)
		@round = round
		@board = build_board
		@switch = false
	end

	def build_board
		@board = {}
		@row = {}
		i = 0


		while i < 6 do 
			if i < 1
				@row["R Guess"] = 0
			elsif i >= 5
				@row["R Place"] = 0
			else
				@row[i] = " "
			end
			
			i += 1
		end

		
		# if @round == 1 
		# 	update_board([" ", " ", " ", " "]) 
		# else
		# 	""
		# end

		@board[@round] = @row

		# @round.times do |x|
		# 	@board[@round] = @row
		# end

		# 10.times do |x|
		# 	@board[x+1] = @row
		# end

		@board
	end

	def update_round round
		@round = round
	end

	def update_board x
		# @board[1][1] = "Hello"
		# print "\n", x, "\n", @round, "\n", @row, "\n", @board[@round][1], "\n", @board[1]["R Guess"]
		# puts ""
		# puts x.class == Integer
		print "Here's the round:#{@round}- Here's the board: #{@board}.\n"

		if x.class != Integer
			# r = @board[round]
			# print "#{r[1]}.\n"
			i = 1
			# x.each { |clr| @row[i] = clr; i += 1}
			# puts x, "\n", x.each { |a| a }
			print @round, i
			x.each { |clr| (print clr, @board[@round][i], i, @round; @board[@round][i] = clr; i += 1) }
			i = 1
		else
			if @switch == true
				@row["R Place"] = x
				@switch = false
			else
				@row["R Guess"] = x
				@switch = true
			end
		end
		# @board[@round][1] = "Hello"
	end


	def display_board
		@board.each do |x| 
			x = x[1]
			# print "#{x}\n" 
			x.each { |y| print "#{y.join('-')}     "}
			puts " "
		end
		# puts @board.to_s, @round
	end

end

