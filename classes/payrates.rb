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