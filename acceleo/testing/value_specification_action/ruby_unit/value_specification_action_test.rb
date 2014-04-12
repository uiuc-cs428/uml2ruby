require 'test/unit'
require 'rubygems'
require 'tuxml'
require_relative '../autogen/ValueSpecificationAction.rb'

class TestValueSpecificationActionSuite < Test::Unit::TestCase

  def test_method_return_values
    assert(return_integer == 42)
    assert(return_string == "foo")
  end
end
