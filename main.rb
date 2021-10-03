require 'tty-prompt'
require_relative './classes/staff'
require_relative './classes/payrates'

company = Company.new.add_payrate(Casual.new).add_payrate(Parttime.new).add_payrate(Fulltime.new)   # creates organisation and sets default payrates


def start_text  # txt displayed on the menu
  puts "#######################################################"
  puts "##                                                   ##"
  puts "##                                                   ##"
  puts "##             Welcome To Onboard Logic              ##"
  puts "##   Simple, paperless onboarding for new employees  ##"
  puts "##                                                   ##"
  puts "##                                                   ##"
  puts "#######################################################"
end

def clear  # clears the screen
    puts "\e[2J\e[f"
end

def back_main_menu   # takes back to home screen
    puts "\n\n Press any key to go back to the main menu"
    $stdin.getch
    clear
    start_text
end

clear      # ckearing screen
start_text   # adding start txt


q1 = "Enter Full Name"
q2 = "Enter Date of birth"
q3 = "Enter Payrate Type"

staff_details = [
     q1,q2,q3
]

def run_onboarding(staff_details)
  answer = ""
  staff_array = []
  for staff_detail in staff_details
    puts staff_detail
    answer = gets.chomp()
    staff_array.push(answer);
  end
  staff1 = Staff.new(staff_array[0], staff_array[1], staff_array[2])
  staff1.display_details()
  puts "Staff Details:"+full_name
end

run_onboarding(staff_details)


while true   #menu
  selection = TTY::Prompt.new.select("Select any:",  cycle: true, marker: '>', echo: false) do |menu|
      menu.choice('Create Staff', 1)
      menu.choice('View Staff', 2)
      menu.choice('Create Timesheet', 3)
      menu.choice('View Timesheet', 4)
      menu.choice('View Payrates', 5)
      menu.choice('Help', 6)
      menu.choice('Exit', 7)


      case selection

      when 1   
      	puts "trial"

      when 2
      	payrate.display_payrate
      end
    end
end