require 'test/unit'
require 'rubygems'
require 'tuxml'
require_relative '../autogen/Car.rb'
require_relative '../autogen/Wheel.rb'

class DependencyClassSuite < Test::Unit::TestCase

  def test_wheel_requires_car
    expected = "acceleo/testing/dependency/ruby_unit/WheelExpected.rb"

    expected_code = File.open(expected).readlines
    assert_equal(expectedCode.first, "require_relative '../autogen/Car.rb'\n")
  end
end
