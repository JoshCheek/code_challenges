require 'minitest/autorun'
require 'minitest/pride'
require_relative 'replace.rb'

class ReplaceTest < Minitest::Test
  def test_it_replaces_a_single_space
    result = replace("Hello World")
    assert_equal "Hello%20World", result
  end

  def test_it_replaces_multiple_spaces
    result = replace("Foo Bar Baz")
    assert_equal "Foo%20Bar%20Baz", result
  end

  def test_it_does_not_replace_trailing_spaces_but_removes_them
    result = replace("FooBar  ")
    assert_equal "FooBar", result
  end

  def test_it_replaces_spaces_and_removes_trailing_ones
    result = replace("Foo Bar Baz     ")
    assert_equal "Foo%20Bar%20Baz", result
  end
end
