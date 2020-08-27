require('pry')

class WriteNumber
  def initialize(num)
    @num = num
    @written = []
    @uniqs = {
      0 => "", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five",
      6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten",
      11 => "eleven", 12 => "twelve"
    }
  end
  def written
    "zero" if @num == 0
  end
  def num
    @num
  end
  def uniqs
    @uniqs
  end
end