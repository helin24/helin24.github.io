class Investment
	@@rate = 0.1

	def initialize(cashFlows)
		raise ExceptionError.new("Must include cash flows") if cashFlows.length < 1
		@cashFlows = cashFlows
	end

	def proceed?
		self.dcf > 0 ? true : false
	end

	def dcf
		value = 0
		@cashFlows.each_index do |i|
			value += @cashFlows[i] / (1+@@rate)**i
		end
		return value
	end

end

machine = Investment.new([-100, 25, 25, 25, 10, 10, 10])
p machine.dcf # => -19.14461314061443
p machine.proceed? # => false

# method to calculate DCF
# method to decide whether to do project
	# Uses simple method and complex method