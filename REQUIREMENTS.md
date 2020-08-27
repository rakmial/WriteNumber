### English Specification
### Requirements: Write a method that translates numbers in numeric (ie Integer)
### form into written English words. 
### From simple to complex (kinda, not really - the lower the number, the more
### special cases, DANKE DEUTSCH, but we can expand to higher values more easily.)


# WriteNumber initializes an instance with 1 input, an Integer, which it binds
#   to instance variable @num that returns with .num method.

# WriteNumber initializes an instance variable @written as [], then checks if 
#  @num is "0". If true, @written = "zero". .written method returns "zero" for
#  "0".

# WriteNumber initializes with a Hash instance variable @uniqs with written
#  English word values corresponding to num Integer keys [0-12] (the weirdos).
#  .uniqs(Integer[0-12]) method accepts key to return written value, "" for 0.

# WriteNumber initializes with a Hash instance variable @teens with written
#  English word values corresponding to num Integer keys [13-19] (the teens)
#  .teens(Integer[13-19]) method accepts key to return written value.

# WriteNumber initializes with a Hash instance variable @tens with written
#  English word values corresponding to num Integer keys [20, 30, ..., 90]
#  (the consistent tens).tens(key) method accepts numbers from [20, 30 ..., 90]
#  and returns the written value.

# WriteNumber initializes with a Hash instance variable @hundreds that is a 
#  subset of @uniqs, accepting keys [1-9] to return their written values.
#  .hundreds method accepts keys from [100, 200, ..., 900], divides by 100
#  then returns written value concatenated with " hundred".

# WriteNumber initializes Hash instance variable @mag_map = 
#  {3 => "thousand", 6 => "million", ..., 12 => "trillion"}. .written method
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
#     @written.shift(@hundreds.fetch(digit) + " hundred")
#    
#    ix += 1
#  num.reverse!.join!.to_i
