require 'test/unit'
require 'rubygems'
require 'tuxml'
require_relative '../autogen/Food.rb'
require_relative '../autogen/Fruit.rb'
require_relative '../autogen/Meat.rb'
require_relative '../autogen/Apple.rb'
require_relative '../autogen/Banana.rb'
require_relative '../autogen/Beef.rb'

class TestGeneralizationSuite < Test::Unit::TestCase
  def test_apple_is_valid_class
    pink_lady_apple = Apple.new
    assert_not_nil(pink_lady_apple)
  end

  def test_apple_is_subclass_of_fruit
    assert_equal(true, Apple < Fruit)
  end

  def test_fruit_not_subclass_of_apple
    assert_equal(false, Fruit < Apple)
  end

  def test_parent_is_subclass_of_grandparent
    assert_equal(true, Fruit < Food)
  end

  def test_food_is_ancestor_of_banana_and_beef
    assert_equal(true, Banana < Food)
    assert_equal(true, Beef < Food)
  end
end
