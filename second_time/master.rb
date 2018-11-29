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

	# def display
	# 	super
	# end

	def has_color?(guess)
		check_color(guess)
	end

	def right_spot(guess)
		check_spot(guess)
	end




	private

	def check_color(guess)
		guess.each { |x| puts @code.any?(x)}
	end

	def check_spot(guess)

	end

	def randomize(code)
		code.each_with_index do |x, i|
			code[i] = @color_box[rand(6)]
		end
		code
	end

end