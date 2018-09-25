require 'minitest/autorun'
require_relative '../models/rock_paper_scissors.rb'
require 'pry'

class TestRockPaperScissors < Minitest::Test

  def setup
    @play_game1 = RockPaperScissors.new('paper', 'scissors')
    @play_game2 = RockPaperScissors.new('rock', 'scissors')
    @play_game3 = RockPaperScissors.new('rock', 'paper')
    @play_game4 = RockPaperScissors.new('paper', 'paper')

  end

  def test_scissors_wins
    assert_equal("Scissors cut Paper. Scissors Wins!!!", @play_game1.play)
  end

  def test_rock_wins
    assert_equal("Rock blunts Scissors. Rock Wins!!!", @play_game2.play)
  end

  def test_paper_wins
    assert_equal("Paper wraps Rock. Paper Wins!!!", @play_game3.play)
  end

  def test_draw
    assert_equal("It's a Draw!!!", @play_game4.play)
  end
end
