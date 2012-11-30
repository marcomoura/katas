require 'test/unit'

require_relative 'kata_range'

class KataRangeTest < Test::Unit::TestCase

  def test_range_one_contains_one
    range = KataRange.new [1,1]
    assert range.contains [1,1]
  end

  def test_two_outiside_range
    range = KataRange.new [1,1]
    assert_equal false, range.contains([2,2])
  end

  def test_0_outiside_range
    range = KataRange.new [1,1]
    assert_equal false, range.contains([0,0])
  end

  def test_26_contains_24
    range = KataRange.new [2,6]
    assert range.contains([2,4])
  end

  def test_26_contains_minus_1_1_6_10
    range = KataRange.new [2,6]
    assert_equal false, range.contains([-1,1,6,10])
  end

  def test_26_contains_2_3_4_5
    range = KataRange.new [2,6]
    assert range.contains([2,3,4,5])
  end

  def test_26_doesnt_contains_7_10
    range = KataRange.new [2,6]
    assert_equal false, range.contains([7,10])
  end

  def test_3_5_contains_3_5
    range = KataRange.new [3,5]
    assert range.contains([3,5])
  end

end
