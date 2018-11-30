class Master < Player
	attr_accessor :name, :code, :color_box
	
	def initialize(name = "Computer", code = [0,0,0,0])	
		@name = name
		@code = code
		@color_box = color_box
		is_computer?()
	end

	def is_computer?
		@name == "Computer" ? @code = randomize(@code) : ""
	end

	def color_box
		super
	end

	def has_color?(guess)
		check_color(guess)
	end

	def right_spot(guess)
		check_spot(guess)
	end

	def name
		@name
	end

	def get_master_code(loss = false)
		if loss 
			return master_code
		end
	end


	private

	def master_code
		@code
	end

	def check_color(guess)
		i = 0
		guess.each { |x| @code.any?(x) ? i += 1 : i }
		i
	end

	def check_spot(guess)
		i = 0
		guess.each_with_index do |x, index|
			@code[index] == x ? i += 1 : i
		end
		i
	end

	def randomize(code)
		code.each_with_index do |x, i|
			code[i] = @color_box[rand(6)]
		end
		code
	end

end