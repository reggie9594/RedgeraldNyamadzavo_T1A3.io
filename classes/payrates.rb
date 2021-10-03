require 'tty-prompt'

class Payrate
  attr_reader :type

  def initialize(type)
    @type = type
  end
end