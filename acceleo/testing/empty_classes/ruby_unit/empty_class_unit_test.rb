require 'test/unit'
require 'rubygems'
require 'tuxml'
require_relative '../autogen/Class1.rb'
require_relative '../autogen/Class2.rb'

class EmptyClassSuite < Test::Unit::TestCase

  def test_class1_is_valid_class
    c1 = Class1.new
    assert_not_nil(c1)
  end

  def test_class2_is_valid_class
    c2 = Class2.new
    assert_not_nil(c2)
  end

end

