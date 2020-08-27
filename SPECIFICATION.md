# English Specification
_Requirements_: Write a method that translates numbers in numeric (ie Integer)
form into written English words. 

###_Tests & Functions_ 
From simple to complex (kinda, not really - the lower the number, the more special cases, DANKE DEUTSCH, but we can expand to higher values more easily.)

1. WriteNumber initializes an instance with 1 input, an Integer, which it binds to instance variable @num that returns with .num method.

2. WriteNumber initializes an instance variable @written as [], then checks if @num is "0". If true, @written = "zero". .written method returns "zero" for "0".

3. WriteNumber initializes with a Hash instance variable @uniqs with written English word values corresponding to num Integer keys [0-12] (the weirdos). .uniqs reader method provided to show key-value Hash object.

4. WriteNumber initializes with a Hash instance variable @teens with writtenEnglish word values corresponding to num Integer keys [13-19] (the teens) .teensreader method provided to show key-value Hash object.

5. WriteNumber initializes with a Hash instance variable @tens with written English word values corresponding to num Integer keys [20, 30, ..., 90] (the consistent tens) .tens method provided to show key-value Hash object.

 6. WriteNumber initializes with a Hash instance variable @hundreds with written English word values corresponding to num Integer keys [1-9]. .hundreds method provided to show key-value Hash object.

7. WriteNumber initializes Hash instance variable @mag_map = {
  3 => "thousand", 6 => "million", 9 => "billion", 12 => "trillion"
  }.
.mag_map is provided to show key-value Hash object.


# .written method
#  returns @written if @written (for zero), then ...
#  Method vars ix and last_one are assigned 0. 
#  num.to_s.reverse!.each do |digit|
#    if ix % 3 == 0
#      last_one = digit
#      if ix/3 > 0
#        @written.append(@mag_map.fetch(ix))
#    if ix % 3 == 1 
#     if digit != 1
#      @written.shift(@uniqs.fetch(last_one)).shift(@tens.fetch(digit)
#     else
#      @written.shift(@uniqs.fetch(digit))
#    if ix % 3 == 2
#     @written.shift(@hundreds.fetch(digit)
#    
#    ix += 1
#  num.reverse!.join!.to_i
