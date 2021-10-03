require 'tty-prompt'

class Payrate
  attr_reader :type

  def initialize(type)
    @type = type
  end

  def display_payrate
    puts "Payrate: #{@type}"
  end
end

class Casual < Payrate
  def initialize
    super("Casual")
  end
end