require 'test/unit'
require 'rubygems'
require 'tuxml'
require_relative '../autogen/Process_Order.rb'

class BigActivitySuite < Test::Unit::TestCase
  def stringInFile(fileName, string)
    generatedCode = File.open(fileName).read
    assert(generatedCode.include?(string))
  end
    
  def test_method_close_order
    assert(Close_Order() == 1)
  end
  
  def test_require_relative_for_call_operation_action
    stringInFile('acceleo/testing/big_activity/autogen/Process_Order.rb', 'require_relative(\'Class1.rb\')')
  end
  
  def test_require_relative_for_call_behavior_action
    stringInFile('acceleo/testing/big_activity/autogen/Process_Order.rb', 'require_relative(\'Deliver_Order.rb\')')
  end  
  
  def test_opaque_action_method_definition
    stringInFile('acceleo/testing/big_activity/autogen/Process_Order.rb', 'def Receive_Order')
  end 
  
  def test_call_behavior_action_method_call
    stringInFile('acceleo/testing/big_activity/autogen/Process_Order.rb', 'returnOrder =Deliver_Order(order)')
  end 
  
  def test_comment_in_activity_diagram
    stringInFile('acceleo/testing/big_activity/autogen/Process_Order.rb', '#Only deliver the Order with Overnight Delivery if it is a Rush Order.')
  end 
  
  def test_node_cf_info_output_in_deliver_order
    stringInFile('acceleo/testing/big_activity/autogen/Deliver_Order.rb', '# The activity "Deliver Order" has 6 nodes and 6 control flows')
  end
  
  def test_sub_activity_method_definition
    stringInFile('acceleo/testing/big_activity/autogen/Deliver_Order.rb', 'def Deliver_Order(order)')
  end
  
  def test_sub_activity_activity_parameter_node_initialization
    stringInFile('acceleo/testing/big_activity/autogen/Deliver_Order.rb', 'anOrder = order')
    stringInFile('acceleo/testing/big_activity/autogen/Deliver_Order.rb', 'anReturnOrder = nil')
  end
  
  def test_sub_activity_control_guards_printed
    stringInFile('acceleo/testing/big_activity/autogen/Deliver_Order.rb', '#else')
    stringInFile('acceleo/testing/big_activity/autogen/Deliver_Order.rb', '#if order == rush')
  end
  
  def test_sub_activity_opaque_action_method_definitions
    stringInFile('acceleo/testing/big_activity/autogen/Deliver_Order.rb', 'Regular_Delivery()')
    stringInFile('acceleo/testing/big_activity/autogen/Deliver_Order.rb', 'Overnight_Delivery()')
  end
  
  def test_sub_activity_return_outputPin
    stringInFile('acceleo/testing/big_activity/autogen/Deliver_Order.rb', 'return anReturnOrder')
  end
end