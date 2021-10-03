require 'tty-prompt' # for termianl app to have options for menu and select options whilst in the app
require_relative './classes/staff'  # define satff  class
require_relative './classes/payrates' # define staff  pay rate
require_relative './classes/company'  # define company, staff has to be onboarded to company database
require_relative './classes/timesheet' # define staff timesheet

company = Company.new.add_payrate(Casual.new).add_payrate(Parttime.new).add_payrate(Fulltime.new)   # creates organisation and sets default payrates

# $staff1=''
# $payrate = ''

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


# run_onboarding(staff_details)

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

      when 1   # option to create staff
        clear
        puts "Creating Staff"
        puts "\n\n\n\n\n"
        q1 = "Enter Full Name"
        q2 = "Enter Date of birth"
        q3 = "Enter Payrate Type"

        staff_details = [            # onboarding questions
             q1,q2,q3
        ]

        # def run_onboarding(staff_details)
          answer = ""
          staff_array = []                 #staff storage array
          i = 0
          for staff_detail in staff_details
            i = i+1
            puts staff_detail                 #printing question
            if i==3                     # after asking the first 2 questions gives user to select payrate and calls select paytrate function in class company
              answer = company.select_payrate
              # puts answer
              $payrate = answer   #global variable: since there no database, payrate wil need to be stored in a variable for use in the future ie creating timesheet
              # puts $payrate
            else        # user able to enter name and DoB
              answer = gets.chomp()
            end
            staff_array.push(answer);      # pushing values into staff storage array
          end
          # staffpayrate = company.select_payrate
          # print staff_array
          $staff1 = Staff.new(staff_array[0], staff_array[1], staff_array[2])       #succcesfull onboarded staff
          puts "\n\n\n\n\n"
          $staff1.display_details()   # display staff details
          # puts "Staff Details:"+full_name
        # end
        back_main_menu

      when 2
        clear

        if $staff1                           #checking if staff has been onboarded, if has it contniues to display staff info
          puts "Staff Details"
          puts "\n\n\n\n\n"
          $staff1.display_details()
          back_main_menu
        else
          puts "Please Add A Staff Member"
          puts "\n\n\n\n\n"
          back_main_menu
        end


      when 3
        clear
        puts "Add Staff Timesheet"           # adding the newly onboarded staff timesheet
        puts "\n\n\n\n\n"
        # puts $payrate
        if $staff1
          $timesheetdays = $payrate.select_days

          $staff1.timesheet = Timesheet.new($payrate, $timesheetdays)
          # staff_timesheet = Timesheet.new($payrate, timesheetdays)

          puts "Thank you"

          $staff1.timesheet.display_timesheet($staff1, company)
          # payrate = company.select_payrate
          # puts payrate
          # payrate.display_payrate
          # timesheetdays = payrate.select_days
          back_main_menu
        else
          clear
          puts "Please add a Staff Member First"
          puts "\n\n\n\n\n"
          back_main_menu
        end




      when 4
        clear
        if $staff1
          puts "view timesheet here"             # view staff timesheet
          puts "\n\n\n\n\n"

          if $timesheetdays
            $staff1.timesheet.display_timesheet($staff1, company)
            back_main_menu
          else
            puts "Please Add a Timesheet First"
            back_main_menu

          end

        else
          puts "Please Add a Staff Member First"
          back_main_menu
        end


      when 5
        clear
        payrate = company.select_payrate
        payrate.display_payrate
        back_main_menu
      when 6
        clear
        puts "#######################################################"
        puts "##                                                   ##"
        puts "##                                                   ##"
        puts "##                  HELP                             ##"
        puts "##   Simple, paperless onboarding for new employees  ##"
        puts "##                                                   ##"
        puts "##                                                   ##"
        puts "#######################################################"
        puts "\n\n"
        puts "Step 1:Create Staff  entering Full Name, DOB and Choose PayRate type"
        puts "Step 2:View newly onboarded staff"
        puts "Step 3:Create Timesheet"
        puts "Step 4:View weekly  pay" 
        back_main_menu
      when 7
        puts "Thank you for using our Onboard Logic"
        return
      end
    end
end
