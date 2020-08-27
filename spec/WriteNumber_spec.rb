require('rspec')
require('WriteNumber')


describe(WriteNumber) do
  it('takes 1 Integer input that may be read with .num method') do
    expect(WriteNumber.new(1).num).to(eq(1))
  end
  it('contains primary return variable @written, .written method returns "zero" \
    if @num is 0') do
      expect(WriteNumber.new(0).written).to(eq("zero"))
  end
  it('contains Hash instance var @uniqs that takes Integers[0-12] as keys \
    and their written Strings as values. .uniqs reader method provided.') do
      expect(WriteNumber.new(0).uniqs).to(eq({
        0 => "", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five",
        6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten",
        11 => "eleven", 12 => "twelve"
      }))
  end
  it('contains Hash instance var @teens that takes Integers[13-19] as keys \
    and their written Strings as values. .teens reader method provided.') do
      expect(WriteNumber.new(0).teens).to(eq({
        13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen",
        17 => "seventeen", 18 => "eighteen", 19 => "nineteen"
      }))
  end
  it('contains Hash instance var @tens that takes Integers[10, 20, ..., 90] \
    as keys and their written Strings as values. .tens reader method provided.') do
      expect(WriteNumber.new(0).tens).to(eq({
        2 => "twenty", 3 => "thirty", 4 => "forty", 5 => "fifty",
        6 => "sixty", 7 => "seventy", 8 => "eighty", 9 => "ninety"
      }))
  end
  it('contains Hash instance var @hundreds with written English word values \
    corresponding to num Integer keys [1-9]. .hundreds method provided to show \
    key-value Hash object.') do
      expect(WriteNumber.new(0).hundreds).to(eq({
        1 => "one hundred", 2 => "two hundred", 3 => "three hundred",
        4 => "four hundred", 5 => "five hundred", 6 => "six hundred",
        7 => "seven hundred", 8 => "eight hundred", 9 => "nine hundred"
      }))
  end
  it('contains Hash instance var @mag_map with written English word values \
    ["thousand", "million", "billion", "trillion"] corresponding to num Integer \
    keys [3, 6, 9, 12]. .mag_map method provided to show key-value Hash object.') do
      expect(WriteNumber.new(0).mag_map).to(eq({
        3 => "thousand", 6 => "million", 9 => "billion", 12 => "trillion"
      }))
  end
  it('provides the .written method, which takes input Integer <= 1000000000000 \
     (1 trillion) and returns the English String for this number.') do
       expect(WriteNumber.new(84254548516).written).to(eq('eight hundred forty two \
        billion five hundred forty five million four hundred eighty five \
        thousand five hundred sixteen'))
     end
end
