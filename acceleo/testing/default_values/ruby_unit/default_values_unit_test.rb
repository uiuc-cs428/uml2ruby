require 'test/unit'
require 'rubygems'
require 'tuxml'
require_relative '../autogen/Class1.rb'

class TestDefaultValuesSuite < Test::Unit::TestCase

  def test_class1
    c1 = Class1.new
    assert_not_nil(c1)

    assert_equal("abcde", c1.string)
    assert_equal("", c1.string_no_default)
    assert_equal(12345, c1.int)
    assert_equal(0, c1.int_no_default)
  end

end

