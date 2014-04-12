require 'test/unit'
require 'rubygems'
require 'tuxml'

class TestActivityCallOperationNodeSuite < Test::Unit::TestCase
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
  
  def test_result_assigned_to_class
    assertRegexInFile('acceleo/testing/activity_call_operation/autogen/SomeFunActivity.rb', 'SaveThis\=Class1.operation1_from_class\(Parameter1\)')
  end
  
  def test_class_operation_without_result
    assertRegexInFile('acceleo/testing/activity_call_operation/autogen/SomeFunActivity.rb', '^\s*Class1.operation2_from_class\(Parameter1\)')
  end
  
  def test_class_operation_with_no_parameter
    assertRegexInFile('acceleo/testing/activity_call_operation/autogen/SomeFunActivity.rb', '^\s*Class1.operation3_from_class\(\)')
  end
end