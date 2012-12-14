$: << File.join(File.dirname(__FILE__),'..')

require 'test/unit'
require 'lib/game'

class GameTest < Test::Unit::TestCase

  def setup
    @game = Game.new
  end

  def teardown
    @game = nil
  end

  def test_initial_mode_game
    assert_equal :advantage, @game.mode_name
  end

  def test_dulce_game
    3.times { @game.point }
    assert_equal :dulce, @game.mode_name
  end

  def test_from_dulce_to_advantage_game
    @game.point
    assert_equal :advantage, @game.mode_name
  end

  def test_point_zero
    assert_equal 0, @game.score_name
  end

  def test_point_15
    @game.point
    assert_equal 15, @game.score_name
  end

  def test_point_30
    2.times { @game.point }
    assert_equal 30, @game.score_name
  end

  def test_point_40
    3.times { @game.point }
    assert_equal 40, @game.score_name
  end
end
