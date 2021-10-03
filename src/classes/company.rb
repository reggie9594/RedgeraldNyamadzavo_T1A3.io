require 'tty-prompt'

class Company
  attr_reader :name, :payrates
  def initialize
    @name = "Reggie's Company"
    @payrates = []
  end

  def add_payrate(payrate)
    @payrates << payrate
    return self
  end

  def select_payrate
    menu = []
    @payrates.each {|payrate| menu.push(payrate.type)}

    selection = TTY::Prompt.new.select("Choose a payrate:", menu, cycle: true, marker: '>', echo: false)
        @payrates.each { |payrate| return payrate if payrate.type == selection }
  end
end