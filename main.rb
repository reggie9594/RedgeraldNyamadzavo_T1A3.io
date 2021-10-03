require 'tty-prompt'

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

q1 = "Enter Full Name"
q2 = "Enter Date of birth"

staff_details = [
     q1,q2
]

def run_onboarding(staff_details)
  answer = ""
  staff_array = []
  for staff_detail in staff_details
    puts staff_detail
    answer = gets.chomp()
    staff_array.push(answer);
  end
  staff1 = Staff.new(staff_array[0], staff_array[1])
  staff1.display_details()
  # puts "Staff Details:"+full_name
end

run_onboarding(staff_details)