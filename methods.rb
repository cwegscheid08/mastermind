module Enumerable

	# def rand_num_array
	# 	x = []
	# 	self.each { 4.times { x.push(rand(5)) } }
	# 	return x
		
	# 	# 4.times { x.push(rand(5)) }
		
	# 	# x
	# end

	def rand_under_6
		self.each_with_index do |num, i|
			# x = rand(5)	
			# print x, y, rand(5), self.to_s, "\n"
			self[i] = rand(6)
		end
		self
	end

end