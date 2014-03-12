require 'test/unit'
require 'rubygems'
require 'tuxml'
require_relative '../autogen/Class1.rb'
require_relative '../autogen/Class2.rb'
require_relative '../autogen/Class3.rb'

class TestAssociationNavSuite < Test::Unit::TestCase
  def test_class1_protected_attribute_not_accessible
    c1 = Class1.new
    assert_raise NoMethodError do
      c1.class3 = "abc123"
    end
  end

  def test_class1_private_attribute_not_accessible
    c1 = Class1.new
    assert_raise NoMethodError do
      c1.class2 = "abc123"
    end
  end
  
  def test_class2_private_attribute_not_accessible
    c2 = Class2.new
    assert_raise NoMethodError do
      c2.class3 = "abc123"
    end
  end
  
  def test_class3_public_attribute_read_write
    c3 = Class3.new
    c3.class1 = "abc123"
    assert_equal(c3.class1, "abc123")
  end
end
