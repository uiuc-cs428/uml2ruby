require 'test/unit'
require 'rubygems'
require 'tuxml'

class TestActivityNodeSuite < Test::Unit::TestCase
  def stringInFile(fileName, string)
    generatedCode = File.open(fileName).read
    assert(generatedCode.include?(string))
  end
    
  def test_activity_behavior_defined
    stringInFile('acceleo/testing/activity_parameter_node/autogen/Activity1.rb', 'def activity1(input1,')
  end
  
  def test_activity_parameter_node_initialization
    stringInFile('acceleo/testing/activity_parameter_node/autogen/Activity1.rb', 'anInput1 = input1')
    stringInFile('acceleo/testing/activity_parameter_node/autogen/Activity1.rb', 'anInput2 = input2')
    stringInFile('acceleo/testing/activity_parameter_node/autogen/Activity1.rb', 'anInput3 = nil')
  end
  
  def test_activity_return_statement
    stringInFile('acceleo/testing/activity_parameter_node/autogen/Activity1.rb', 'return anInput3')
  end
end