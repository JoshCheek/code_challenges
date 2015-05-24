require 'minitest/autorun'
require 'minitest/pride'
require_relative 'compress'

class CompressTest < Minitest::Test
  def test_it_compresses_repetitions_of_the_same_letter
    assert_equal "a2", compress("aa")
    assert_equal "a3", compress("aaa")
  end

  def test_if_the_code_is_longer_it_returns_original_string
    assert_equal "a",  compress("a")
    assert_equal "ab", compress("ab")
  end

  def test_it_compresses_mulitple_letters
    assert_equal "a3b2c7d1", compress("aaabbcccccccd")
  end
end
