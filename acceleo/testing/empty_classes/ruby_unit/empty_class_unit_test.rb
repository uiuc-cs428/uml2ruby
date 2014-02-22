require 'test/unit'
require 'rubygems'
require 'tuxml'
require 'acceleo/testing/empty_classes/autogen/Class1.rb'
require 'acceleo/testing/empty_classes/autogen/Class2.rb'

class TestAttributesSuite < Test::Unit::TestCase

  def test_class1_is_valid_class
    c1 = Class1.new
    assert_not_nil(c1)
  end

  def test_class2_is_valid_class
    c2 = Class2.new
    assert_not_nil(c2)
  end

end

