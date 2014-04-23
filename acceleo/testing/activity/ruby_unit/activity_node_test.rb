require 'test/unit'
require 'rubygems'
require 'tuxml'

class TestActivityNodeSuite < Test::Unit::TestCase
  def stringInFile(fileName, string)
    generatedCode = File.open(fileName).read
    assert(generatedCode.include?(string))
  end
  
  def test_value_specification_action
    stringInFile('acceleo/testing/activity/autogen/SomeFunActivity.rb', 'def valueSpecificationAction1')
  end
  
  def test_call_behavior_action
    stringInFile('acceleo/testing/activity/autogen/SomeFunActivity.rb', 'def behaviorActivity(order)')
  end
  
  def test_call_behavior_action_method_defined
    stringInFile('acceleo/testing/activity/autogen/SomeFunActivity.rb', 'returnOrder =behaviorActivity(order)')
  end

  
  def test_behavior_activity_parameter_node_initialization
    stringInFile('acceleo/testing/activity/autogen/BehaviorActivity.rb', 'anOrder = order')
    stringInFile('acceleo/testing/activity/autogen/BehaviorActivity.rb', 'anReturnOrder = nil')
  end
  
  def test_behavior_activity_opaque_actions
    stringInFile('acceleo/testing/activity/autogen/BehaviorActivity.rb', 'rushedDelivery()')
    stringInFile('acceleo/testing/activity/autogen/BehaviorActivity.rb', 'regularDelivery()')
  end
  
  def test_behavior_activity_opaque_actions
    stringInFile('acceleo/testing/activity/autogen/BehaviorActivity.rb', 'return anReturnOrder')
  end
end