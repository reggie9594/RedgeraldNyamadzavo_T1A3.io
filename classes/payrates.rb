require 'tty-prompt'

class Payrate
  attr_reader :type

  def initialize(type)
    @type = type
  end

  def display_payrate
    puts "Payrate: #{@type}"
  end
  
  def select_days
    days_menu = []
    days_selected = []
    select_days_menu(days_menu)
    select_days_selection(days_selected, days_menu)
    return days_selected
  end


  def select_days_menu(days_menu)
    @days.each do |day, status|
      days_menu.push(name: day.to_s)
    end
  end


  def select_days_selection(days_selected, days_menu)
      TTY::Prompt.new.multi_select("Please select your days worked:", days_menu, cycle: true, marker: '>', echo: false, per_page: 7).each do |day|

          days_selected.push(day)
      end
  end
end

class Casual < Payrate
  def initialize
    super("Casual")
  end
end

class Casual < Payrate
  def initialize
    super("Casual", 20, {Monday: "Available", Tuesday: "Available", Wednesday: "Available", Thursday: "Available", Friday: "Available", Saturday: "Available", Sunday: "Available"})
  end
end

class Parttime < Payrate
  def initialize
    super("Parttime", 30, {Monday: "Available", Tuesday: "Available", Wednesday: "Available", Thursday: "Available", Friday: "Available", Saturday: "Available", Sunday: "Available"})
  end
end

class Fulltime < Payrate
  def initialize
    super("Fulltime", 50, {Monday: "Available", Tuesday: "Available", Wednesday: "Available", Thursday: "Available", Friday: "Available", Saturday: "Available", Sunday: "Available"})
  end
end