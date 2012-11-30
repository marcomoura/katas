class KataRange
  def initialize range
    @range = range
  end

  def contains value
    value.sort!
    @range.first <= value.first and @range.last >= value.last
  end
end
