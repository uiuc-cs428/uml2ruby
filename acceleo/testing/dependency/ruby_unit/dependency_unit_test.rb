require 'test/unit'
require 'rubygems'
require 'tuxml'
require 'set'

require_relative '../autogen/Car.rb'
require_relative '../autogen/Wheel.rb'
require_relative '../autogen/Class1.rb'

class DependencyClassSuite < Test::Unit::TestCase
  def test_wheel_requires_car
    autogen = "acceleo/testing/dependency/autogen/Wheel.rb"

    generated_code = File.open(autogen).readlines
    assert_equal(generated_code.first, "require_relative '../autogen/Car.rb'\n")
  end

  def test_multi_dependency
    autogen = "acceleo/testing/dependency/autogen/Class1.rb"

    require_statements = Set.new []
    File.open(autogen).each do |line|
      if (line =~ /^require.+\'.+\'.*/)
        uniqueAdd = require_statements.add?(autogen);

        assert_not_nil(uniqueAdd, "Duplicate require statement found: " + line)
      end
    end
  end

  def test_consecutive_newlines
    autogen = "acceleo/testing/dependency/autogen/Class1.rb"

    prev_line = nil
    File.open(autogen).each do |line|
      if (prev_line != nil && line =~ /^\s*$/ && prev_line =~ /^\s*$/)
        assert(false, "Consecutive white space lines found")
      end
      
      prev_line = line
    end
  end
end