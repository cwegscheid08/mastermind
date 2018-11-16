class CodeMaster 
	attr_accessor :master, :color_box
	attr_reader :code


	def initialize(master, code, color_box)
		@master = master
		@@color_box = color_box
		@code = get_colors(randomize(code))
	end

	def get_colors code
		code.each_with_index do |x, i|
			code[i] = @@color_box[x]	
		end
	end

	def randomize code
		load './methods.rb'
		return code.rand_under_6
	end

	def display
		print @master, " ", @code, " ", "In code_master\n" 
	end

	def is_there?(guess)
		load './methods.rb'
		counter = 0

		guess.each do |x| 
			if [x].any_colors?(@code)
				counter += 1
			else
				" "
			end
		end
		# print "You got #{counter} colors right,"
		return counter
	end

	def is_in_place?(guess)
		load './methods.rb'
		counter = 0

		guess.each_with_index do |clr, i|
			if [clr, i].color_in_spot?(@code) 
				# print "#{clr}'s good spot." 
				counter += 1
			else
				 " "
			end
		end
		# print "#{counter} colors are in the right spot."
		return counter
	end


	# def compare_code(guess)
	# 	load './methods.rb'
	# 	counter = 0

	# 	guess.each do |x| 
	# 		if [x].any_colors?(@code)
	# 			counter += 1
	# 		else
	# 			" "
	# 		end
	# 	end

	# 	print "You got #{counter} colors right,"
	# 	counter = 0
	# 	print " and "

	# 	guess.each_with_index do |clr, i|
	# 		if [clr, i].color_in_spot?(@code) 
	# 			# print "#{clr}'s good spot." 
	# 			counter += 1
	# 		else
	# 			 " "
	# 		end
	# 	end

	# 	print "#{counter} colors are in the right spot."
	# end



	private

	def code_vault(code)
		@code = code
	end
end

