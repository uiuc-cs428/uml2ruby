require 'test/unit'
require 'rubygems'
require 'tuxml'
require 'acceleo/testing/class_attributes/autogen/Class1.rb'
require 'acceleo/testing/class_attributes/autogen/Class2.rb'

class TestAttributesSuite < Test::Unit::TestCase

  def test_class1_is_valid_class
    c1 = Class1.new
    assert_not_nil(c1)
  end

  def test_class2_is_valid_class
    c2 = Class2.new
    assert_not_nil(c2)
  end

  def test_class1_public_attribute_read_write
    c1 = Class1.new
    c1.public_attribute = "abc123"
    assert_equal(c1.public_attribute, "abc123")
  end

  def test_class1_protected_attribute_not_accessible
    c1 = Class1.new
    assert_raise NoMethodError do
      c1.protected_attribute = "abc123"
    end
  end

  def test_class2_readonly_attribute_is_readable
    c2 = Class2.new
    assert_equal(nil, c2.read_only_attribute)
  end

  def test_class2_readonly_attribute_not_writable
    c2 = Class2.new
    assert_raise NoMethodError do
      c2.read_only_attribute = "abc123"
    end
  end

  def test_class2_private_attribute_not_accessible
    c2 = Class2.new
    assert_raise NoMethodError do
      c2.private_attribute = "abc123"
    end
  end

end

