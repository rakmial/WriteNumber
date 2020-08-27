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
    @teens = {
      13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen",
      17 => "seventeen", 18 => "eighteen", 19 => "nineteen"
    }
    @tens = {
      20 => "twenty", 30 => "thirty", 40 => "forty", 50 => "fifty",
      60 => "sixty", 70 => "seventy", 80 => "eighty", 90 => "ninety"
    }
    @hundreds = {
      1 => "one hundred", 2 => "two hundred", 3 => "three hundred",
      4 => "four hundred", 5 => "five hundred", 6 => "six hundred",
      7 => "seven hundred", 8 => "eight hundred", 9 => "nine hundred"
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
  def teens
    @teens
  end
  def tens
    @tens
  end
  def hundreds
    @hundreds
  end
end