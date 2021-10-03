class Timesheet
	attr_reader :days

	def initialize(payrate, days)
		@payrate = payrate
		@days = days
	end

	def display_timesheet(staff, company)
		puts "Payrate #{@payrate.type}"
		puts "They worked on"
		@days.each {|day| puts " *#{day}"}
		puts "#{staff.full_name} worked #{@days.length} days"
		puts "Total Pay : $#{'%.2f' % payrate_amount}"
	end


	def payrate_amount
		return @payrate.rate.to_f * @days.length
	end
end