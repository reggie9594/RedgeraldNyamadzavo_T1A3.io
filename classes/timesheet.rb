require 'tty-prompt'

class Timesheet
	attr_reader :days

	def initialize(payrate, days)
		@payrate = payrate
		@days = days
	end
end