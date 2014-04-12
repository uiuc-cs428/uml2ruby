require 'test/unit'
require 'rubygems'
require 'tuxml'

class TestActivityNodeSuite < Test::Unit::TestCase
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
  
  def test_value_specification_action
    stringInFile('acceleo/testing/activity/autogen/SomeFunActivity.rb', 'ValueSpecificationAction1')
  end
  
  def test_call_operation_action
    stringInFile('acceleo/testing/activity/autogen/SomeFunActivity.rb', 'CallOperationAction1')
  end
    
  def test_call_behavior_action
    stringInFile('acceleo/testing/activity/autogen/SomeFunActivity.rb', 'def BehaviorActivity(order)')
  end
  
  def test_call_behavior_action_method_defined
    stringInFile('acceleo/testing/activity/autogen/SomeFunActivity.rb', 'returnOrder =BehaviorActivity(order)')
  end
  
  def test_behavior_activity
    stringInFile('acceleo/testing/activity/autogen/BehaviorActivity.rb', 'def BehaviorActivity(order)')
  end
  
  def test_behavior_activity_parameter_node_initialization
    stringInFile('acceleo/testing/activity/autogen/BehaviorActivity.rb', 'anOrder = order')
    stringInFile('acceleo/testing/activity/autogen/BehaviorActivity.rb', 'anReturnOrder = nil')
  end
  
  def test_behavior_activity_opaque_actions
    stringInFile('acceleo/testing/activity/autogen/BehaviorActivity.rb', 'RushedDelivery()')
    stringInFile('acceleo/testing/activity/autogen/BehaviorActivity.rb', 'RegularDelivery()')
  end
  
  def test_behavior_activity_opaque_actions
    stringInFile('acceleo/testing/activity/autogen/BehaviorActivity.rb', 'return anReturnOrder')
  end
end