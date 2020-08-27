
class WriteNumber
  @num = nil
  @written = []
  def initialize(num)
    @num = num
  end
  def num
    @num
  end
  def written
    "zero" if @num == 0
  end
end