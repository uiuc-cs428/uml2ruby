
# The activity "SomeFunActivity" has 22 nodes and 14 control flows 
  # The initial node is called "The Good Node"
      #The Good Node
      #ControlFlow
  	    #DecisionNode
  	    #ControlFlow1
  		    #OpaqueAction
  		    #ControlFlow2
  			    #OpaqueAction1
  			        #ActivityFinalNode
  				
  	    #DecisionNode
  	    #ControlFlow4
  		    #OpaqueAction2
  		    #ControlFlow5
  			    #ValueSpecificationAction1
  			    #ValueSpecificationAction1 -> Output Pin: Result, Value: IsLightOn=false
  			    #ControlFlow6
  				    #CallOperationAction1
  				    #CallOperationAction1 -> On port: Port1, Operation: Operation1(Integer Param1, Integer Param2, SomeFunActivity target), Result: Result
  				    #ControlFlow7
  					    #BehaviorActivity
  					    #BehaviorActivity -> Operation: BehaviorActivity
  					        #FlowFinalNode
  						
def OpaqueAction
  #TODO fill in function
end

def OpaqueAction1
  #TODO fill in function
end

def OpaqueAction2
  #TODO fill in function
end

def BehaviorActivity(order)
  anOrder = order
  anReturnOrder = nil
  # Control1
  # RushOrder
  RushedDelivery()
  return anReturnOrder
   
  # RegularOrder
  RegularDelivery()
  return anReturnOrder
end

def SomeFunActivity
  OpaqueAction()
  
  OpaqueAction1()
  
  OpaqueAction2()
  
  returnOrder =BehaviorActivity(order)
end
