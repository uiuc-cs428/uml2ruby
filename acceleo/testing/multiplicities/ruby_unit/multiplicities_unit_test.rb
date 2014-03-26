require 'test/unit'
require 'rubygems'
require 'tuxml'
require_relative '../autogen/Burger.rb'

class TestMultiplicitiesSuite < Test::Unit::TestCase

  def test_burger_attributes
    burger = Burger.new
    assert_not_nil(burger)
    
    assert(burger.patties.kind_of? Array)
    assert(burger.patties.first.kind_of? Patty)
    assert(burger.bun == nil)
    assert(burger.condiments.kind_of? Array)
    assert(burger.condiments.size == 0)
    assert(burger.price.kind_of? Price)
    
    assert(burger._patties.kind_of? Array)
    assert(burger._patties.first.kind_of? Patty)
    assert(burger._bun == nil)
    assert(burger._condiments.kind_of? Array)
    assert(burger._condiments.size == 0)
    assert(burger._price.kind_of? Price)
  end

end