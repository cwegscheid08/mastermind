module Enumerable

	def rand_under_6
		self.each_with_index do |num, i|
			# x = rand(5)	
			# print x, y, rand(5), self.to_s, "\n"
			self[i] = rand(6)
		end
		self
	end

	# def any_colors?
	def any_colors?(code)
		# print "MASTER:#{code}\nSELF:#{self}"
		# print "SELF:#{self}"

		code.any?(self[0])

		# self.each do |breaker_color|
			# print breaker_color, "\n", breaker_index, "\n"

			# return (code.any? { |master_color| master_color == breaker_color }) ? true : false
			# return (code.any? { |master_color| master_color == self }) ? true : false

			# if (code.any? { |master_color| master_color == breaker_color })
			# 	# return "There is a #{breaker_color} in there.\n\n"
			# 	return true
			# else
			# 	# return "#{breaker_color}'s not there.\n\n"
			# 	return false
			# end
		# end
	end


	def color_in_spot?(code)
		# print "GUESS/INDEX:#{self[0]}, #{self[1]}\nMASTER/INDEX:#{code}\n\n", ""
		code.each_with_index do |master_color, master_index| 
			if (master_color == self[0] && master_index == self[1])
				return true
			end
		end
		return false
	end

end