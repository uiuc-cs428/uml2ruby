require 'test/unit'
require 'rubygems'
require 'tuxml'
require 'set'

require_relative '../autogen/RandomVariableAssignment.rb'

class RandomVariableAssignmentSuite < Test::Unit::TestCase
  def stringInFile(fileName, string)
    generatedCode = File.open(fileName).read
    assert(generatedCode.include?(string))
  end

  def assertRegexInFile(fileName, string)
    assert(regexFoundInFile(fileName, string), "String not found: " + string)
  end

  def regexFoundInFile(fileName, string)
    File.open(fileName, "r") do |file|
      file.each do |line|
        if(  line.match(string) )
          return true
        end
      end
      return false
    end
  end

  def test_get_rand
    i = get_rand()
    assert(i >= 0 and i <= 5)
  end

  def test_summation
    i = 5
    assert(summation(i) == (5+4+3+2+1))
  end

  def test_first_variable_assignment
    stringInFile('acceleo/testing/big_activity/autogen/Process_Order.rb', 'i = get_rand()')
  end

  def test_second_variable_assignment
    stringInFile('acceleo/testing/big_activity/autogen/Process_Order.rb', 'sum = summation(i)')
  end

end
