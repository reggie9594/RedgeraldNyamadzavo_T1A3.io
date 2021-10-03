class Staff
     attr_accessor :full_name, :dob
     def initialize(full_name, dob)
          @full_name = full_name
          @dob = dob
     end

     def display_details()
        puts "Staff Name: #@full_name"
        puts "Staff DoB: #@dob"
     end
end