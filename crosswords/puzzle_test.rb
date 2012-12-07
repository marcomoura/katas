require 'test/unit'
require 'turn'
require_relative 'puzzle'

class PuzzleTest < Test::Unit::TestCase

  def two_filled
<<filled
############
############
############
############
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

  def two_letter_two_filled
<<filled
############
#    ##    #
#    ##    #
############
############
############
############
############
filled
  end


  def test_render_two_filled
    puzz = Puzzle.new 'result/two_filled.txt'
    assert_equal two_filled, puzz.crossword
  end

  def test_render_two_letter
    puzz = Puzzle.new 'result/two_squared.txt'
    assert_equal two_letter, puzz.crossword
  end

  def test_render_two_letter_two_filled
    puzz = Puzzle.new 'result/two_squared_filled.txt'
    assert_equal two_letter_two_filled, puzz.crossword
  end

end
