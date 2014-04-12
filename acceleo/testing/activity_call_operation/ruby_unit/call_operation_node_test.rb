require 'test/unit'
require 'rubygems'
require 'tuxml'

class TestActivityNodeSuite < Test::Unit::TestCase
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
  
  def test_initial_node
    assertRegexInFile('acceleo/testing/activity_call_operation/autogen/SomeFunActivity.rb', 'SaveThis\=Class1.operation1_from_class\(Parameter1\)')
  end
end