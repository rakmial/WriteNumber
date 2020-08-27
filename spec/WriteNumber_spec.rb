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

end

