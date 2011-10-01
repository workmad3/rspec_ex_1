class Sorter
  attr_reader :value # either this line or value method

  def add(value)
    @value=value         # simply set instance variable @val to 3
  end
end