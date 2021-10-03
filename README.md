# RedgeraldNyamadzavo_T1A3.io
Onboard Logic Terminal App

	Provide a link to your source control repository
 
 https://github.com/reggie9594/RedgeraldNyamadzavo_T1A3.io
 
 


Describe at a high level what the application will do

Onboard Logic is an MVP for a onboarding and timesheet app. The purpose of Onboard Logic MVP is to create a seamless onboarding process and timesheet system that will allow users to be able to onboard employees the assign payrates based on the job position (full time, part time and casual). The users will then be able to create a timesheet for those employees that can be submitted for payment processing at the end of payroll cycle. 

 Identify the problem it will solve and explain why you are developing it
 
The first problem onboard logic is solving is the use of paperwork (manual)which is very error prompt and digitalising (automating the onboard and timesheet process) which is more accurate when collecting data. This will help organisation keep track of their employees working hours, help pay staff for their correct rostered hours. The was a study that was done on organisation adopting more modern onboarding systems. The study showed that organisations that had implemented an onboarding system in their organisation, their level of productivity levels increased by 50%. Onboard logic will help more organisation increase their productivity levels by providing them with a more efficient onboarding system. 

Identify the target audience

The target audience for onboard logic will be healthcare organisation. Onboard logic will be more suited for healthcare organisation for the reason that in the future I will implement a schards award system. The SCHADS Industry Award is a complex and highly specific Modern Award covering key areas such as rest between breaks and hours of work due to the nature of the industry. This will allow employers to pay their staff members more accurately. It will cover aspects such as over time, different payrates depending on the time of the employee shift. Most importantly it will make it easy for these organisations be more compliant.

Explain how a member of the target audience will use it

1.The admin person of the organisation will an option to add the employee or go to employee list 

2. If they select to add employee the system will prompt the user to add employee full name, date of birth, job position (full time, part time and casual) and payrate
3. The system will then give the user option to view the recently added employee, create timesheet or exit 
4. If the user chooses to create timesheet the system will then prompt the user to add start time and end time, start date and end date then submit timesheet 
5. After the timesheet has been submitted the employee weekly pay will be outputted.  

Develop a list of features that will be included in the application. It must include:
- at least THREE features

- describe each feature

![welcome page](https://user-images.githubusercontent.com/89363720/135741888-a4f4d90e-4ea3-4a49-836a-5cde9b3fb07e.PNG)

welcome page also the main page , this is the first page that the user sees when they start using the system. It has a selection of menus that the user can navigate to other sections of the page. I created variables on this feature such as the company variable which contained the payrate element which is used for setting default payrates for the organisation. (company = Company.new.add_payrate(Casual.new).add_payrate(Parttime.new).add_payrate(Fulltime.new). I then utilised for loops function for calling payrate functions in the class company. There is also a global variable which i used to store the payrate values for future use when the user starts creating timesheets

Create Staff

![create staff](https://user-images.githubusercontent.com/89363720/135742430-b6a843ac-5135-408f-ba2e-1b4d2889942e.PNG)

This feature allows users to enter their staff information during the onboarding process. This is an important step in the app since it will help employees be able to create timesheets in the system and view information about the staff. I have variable full name, dob, payrates and timesheets. The variables will hold data of the new staff information that will be entered in the system. I also have functions def display which will be used to display data of the new staff. 

Timesheet 

![timesheet](https://user-images.githubusercontent.com/89363720/135742818-21c50934-e0c8-4dfe-b037-1ec98d9b8071.PNG)

The timesheet feature allows user to create the timesheet of the new employee. The is done by selecting the days the employee works and after that the weekly pay will be outputted 


Develop an outline of the user interaction and experience for the application.
Your outline must include:
- how the user will find out how to interact with / use each feature
- how the user will interact with / use each feature
- how errors will be handled by the application and displayed to the user

![welcome page](https://user-images.githubusercontent.com/89363720/135741888-a4f4d90e-4ea3-4a49-836a-5cde9b3fb07e.PNG)

main page will have option to create staff, view staff, create timehseet, view timesheet, view payrates, help and Exit

![create staff](https://user-images.githubusercontent.com/89363720/135742430-b6a843ac-5135-408f-ba2e-1b4d2889942e.PNG)

allows uers to create staff 

![timesheet](https://user-images.githubusercontent.com/89363720/135742818-21c50934-e0c8-4dfe-b037-1ec98d9b8071.PNG) 

allows user to create timesheet






Develop a diagram which describes the control flow of your application. Your diagram must:
- show the workflow/logic and/or integration of the features in your application for each feature.
- utilise a recognised format or set of conventions for a control flow diagram, such as UML.

![control flow](https://user-images.githubusercontent.com/89363720/135743149-4e81b4fa-e267-4b84-af6d-282e5001fba9.png)


Develop an implementation plan which:
- outlines how each feature will be implemented and a checklist of tasks for each feature
- prioritise the implementation of different features, or checklist items within a feature
- provide a deadline, duration or other time indicator for each feature or checklist/checklist-item

The first step I took was to brainstorm my idea and come up with features that I could work on and finish before the due date. 

![brainstorm](https://user-images.githubusercontent.com/89363720/135743906-38b115d6-28bc-47f5-bca6-89af35b2932e.png)





The trello boards were useful to keep track of where i was on the project 

![image](https://user-images.githubusercontent.com/89363720/135743860-610d4d98-5ca5-467a-a1e6-4f3b1e6049a0.png)






Instructions for Installation and Use

1.You will need ruby installed on your computer. 

2.You will also need the Bundler gem installed. It comes with the main ruby installation, but if you do not have it on your machine, you can install it with the following command:

gem install bundler

3.Fork or clone this repository down to your local computer

4.To install the gem(s) required, navigate to the location of the /src folder in repostitory on your computer, and use the command:

bundle install

Run the app with:
ruby main.rb










 
