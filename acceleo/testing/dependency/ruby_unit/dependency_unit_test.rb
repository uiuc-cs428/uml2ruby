require 'test/unit'
require 'rubygems'
require 'tuxml'
require 'acceleo/testing/dependency/autogen/Car.rb'
require 'acceleo/testing/dependency/autogen/Wheel.rb'
require 'acceleo/testing/dependency/ruby_unit/CarExpected.rb'
require 'acceleo/testing/dependency/ruby_unit/WheelExpected.rb'

class DependencyClassSuite < Test::Unit::TestCase

  def test_expected_matches_generated_Car
    autogen = "acceleo/testing/dependency/autogen/Car.rb"
    expected = "acceleo/testing/dependency/ruby_unit/CarExpected.rb"
    
    generatedCode = File.open(autogen).readlines
    expectedCode = File.open(expected).readlines
    assert_equal(generatedCode, expectedCode)
  end
  
  def test_expected_matches_generated_Wheel
    autogen = "acceleo/testing/dependency/autogen/Wheel.rb"
    expected = "acceleo/testing/dependency/ruby_unit/WheelExpected.rb"
    
    generatedCode = File.open(autogen).readlines
    expectedCode = File.open(expected).readlines
    assert_equal(generatedCode, expectedCode)
  end

end
