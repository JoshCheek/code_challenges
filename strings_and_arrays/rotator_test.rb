require 'minitest/autorun'
require 'minitest/pride'
require_relative 'rotator.rb'

class RotatorTest < Minitest::Test
  def setup
    @three = [[1,2,3],[4,5,6],[7,8,9]]
    @four = [[1,2,3,4],[5,6,7,8],[9,10,11,12],[13,14,15,16]]
  end

  def test_it_rotates_three
    result = rotate(@three)
    assert_equal [[7,4,1],[8,5,2],[9,6,3]], result
  end

  def test_it_rotates_four
    result = rotate(@four)
    assert_equal [[13,9,5,1],[14,10,6,2],[15,11,7,3],[16,12,8,4]], result
  end
end
