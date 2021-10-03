require 'tty-prompt'

class Company
  attr_reader :name, :payrates
  def initialize
    @name = "Reggie's Company"
  end
end