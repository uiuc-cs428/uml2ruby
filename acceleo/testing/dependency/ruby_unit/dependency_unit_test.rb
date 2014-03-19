require 'test/unit'
require 'rubygems'
require 'tuxml'
require_relative '../autogen/Car.rb'
require_relative '../autogen/Wheel.rb'

class DependencyClassSuite < Test::Unit::TestCase

  def test_wheel_requires_car
    autogen = "acceleo/testing/dependency/autogen/Wheel.rb"

    generated_code = File.open(autogen).readlines
    assert_equal(generated_code.first, "require_relative '../autogen/Car.rb'\n")
  end
end
