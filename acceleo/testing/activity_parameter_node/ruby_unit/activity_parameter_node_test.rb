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
      
  def test_activity_behavior_defined
    assertRegexInFile('acceleo/testing/activity_parameter_node/autogen/Activity1.rb', 'def Activity1\(.*input1')
  end
  
  def test_activity_parameter_node_initialization
    assertRegexInFile('acceleo/testing/activity_parameter_node/autogen/Activity1.rb', 'anInput1 = input1')
    assertRegexInFile('acceleo/testing/activity_parameter_node/autogen/Activity1.rb', 'anInput2 = input2')
    assertRegexInFile('acceleo/testing/activity_parameter_node/autogen/Activity1.rb', 'anInput3 = nil')
  end
  
  def test_activity_return_statement
    assertRegexInFile('acceleo/testing/activity_parameter_node/autogen/Activity1.rb', 'return anInput3')
  end
end