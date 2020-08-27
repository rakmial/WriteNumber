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
    and their written values as values. .uniqs(key) reader method provided.') do
      expect(WriteNumber.uniqs(6)).to(eq("six"))
      expect(WriteNumber.uniqs(12)).to(eq("twelve"))
  end

end

