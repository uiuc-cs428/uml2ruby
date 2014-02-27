require 'test/unit'
require 'rubygems'
require 'tuxml'
require 'acceleo/testing/class_methods/autogen/Class1.rb'

class TestMethodsSuite < Test::Unit::TestCase

  def test_class1_is_valid_class
    c1 = Class1.new
    assert_not_nil(c1)
  end

  def test_class1_public_method_accessible
    c1 = Class1.new
    assert(defined? c1.method1)
  end

  def test_class1_public_method_argument_list
    c1 = Class1.new
    arg1 = nil
    arg2 = nil
    arg3 = nil
    assert_nothing_raised ArgumentError do
      c1.method1(arg1, arg2, arg3)
    end
  end

  def test_class2_private_method_unaccessible
    c1 = Class1.new
    assert_raise NoMethodError do
      c1.method2()
    end
  end
end

