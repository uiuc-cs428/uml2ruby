require 'test/unit'
require 'rubygems'
require 'tuxml'

class TestInitialNodeSuite < Test::Unit::TestCase
  def stringInFile(fileName, string)
    generatedCode = File.open(fileName).read
    assert(generatedCode.include?(string))
  end
    
  def test_initial_node
    stringInFile('acceleo/testing/activity/autogen/SomeFunActivity.rb', 'The Good Node')
  end
  
  def test_activity_final_node
    stringInFile('acceleo/testing/activity/autogen/SomeFunActivity.rb', 'ActivityFinalNode')
  end
  
  def test_flow_final_node
    stringInFile('acceleo/testing/activity/autogen/SomeFunActivity.rb', 'FlowFinalNode')
  end
end