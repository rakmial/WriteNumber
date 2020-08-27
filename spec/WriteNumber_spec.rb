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
end

