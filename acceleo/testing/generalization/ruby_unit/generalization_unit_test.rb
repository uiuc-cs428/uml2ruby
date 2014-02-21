require 'test/unit'
require 'rubygems'
require 'tuxml'
require 'testing/generalization/autogen/Food.rb'
require 'testing/generalization/autogen/Fruit.rb'
require 'testing/generalization/autogen/Meat.rb'
require 'testing/generalization/autogen/Apple.rb'
require 'testing/generalization/autogen/Banana.rb'
require 'testing/generalization/autogen/Beef.rb'


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
