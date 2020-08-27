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
      2 => "twenty", 3 => "thirty", 4 => "forty", 5 => "fifty",
      6 => "sixty", 7 => "seventy", 8 => "eighty", 9 => "ninety"
    }
    @hundreds = {
      1 => "one hundred", 2 => "two hundred", 3 => "three hundred",
      4 => "four hundred", 5 => "five hundred", 6 => "six hundred",
      7 => "seven hundred", 8 => "eight hundred", 9 => "nine hundred"
    }
    @mag_map = {
      3 => "thousand", 6 => "million", 9 => "billion", 12 => "trillion"
    }

  end
  def written
    if @num == 0
      "zero"
    else
      ix = 0
      last_one = 0
      flip = num.to_s.reverse.split("").map {|char| char.to_i}
      flip.each do |digit|
        if ix % 3 == 0
          last_one = digit
          if ix / 3 > 0
            @written.shift(@mag_map.fetch(ix))
          end
        end
        if ix % 3 == 1
          if digit != 1
            @written.shift(@uniqs.fetch(last_one))
            @written.shift(@tens.fetch(digit))
          else 
            binding.pry
            @written.shift(@uniqs.fetch(digit))
          end
        end
        if ix % 3 == 2
          @written.shift(@hundreds.fetch(digit))
        end
        ix += 1
      end
      @written.join.to_i
    end
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
  def mag_map
    @mag_map
  end
end