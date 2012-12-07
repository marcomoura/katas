require 'test/unit'
require 'turn'
require_relative 'view'

class ViewTest < Test::Unit::TestCase

  def filled
<<filled
######
######
######
######
filled
  end

  def two_filled
<<filled
############
############
############
############
filled
  end

  def letter
<<filled
######
#    #
#    #
######
filled
  end

  def two_letter
<<filled
############
#    ##    #
#    ##    #
############
filled
  end

  def test_filled_square
    cross = View.new('x')
    assert_equal filled, cross.render
  end

  def test_letter_square
    cross = View.new('_')
    assert_equal letter, cross.render
  end

  def test_two_filled_square
    cross = View.new('xx')
    assert_equal two_filled, cross.render
  end

  def test_two_letter_square
    cross = View.new('__')
    assert_equal two_letter, cross.render
  end
end
