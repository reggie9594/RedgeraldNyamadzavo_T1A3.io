class Staff
     attr_accessor :full_name, :dob, :payrate
     def initialize(full_name, dob, payrate)
          @full_name = full_name
          @dob = dob
          @payrate = payrate
     end

     def display_details()
        puts "Staff Name: #@full_name"
        puts "Staff DoB: #@dob"
        puts "Staff Payrate: #@payrate"
     end
end