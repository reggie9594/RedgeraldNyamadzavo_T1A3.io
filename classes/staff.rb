class Staff
     attr_accessor :full_name, :dob, :payrate, :timesheet
     def initialize(full_name, dob, payrate)
          @full_name = full_name
          @dob = dob
          @payrate = payrate
          @timesheet = nil
     end

     def display_details()
        puts "Staff Name: #@full_name"
        puts "Staff DoB: #@dob"
        # puts "Staff Payrate: #@payrate"
        # puts "Staff Rate: #@rate"
     end
end