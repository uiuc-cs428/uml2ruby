  #The activity "SomeFunActivity" has 15 nodes and 9 control flows
  #The initial node is called "The Good Node"
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
  					    #CallBehaviorAction1
  					    #CallBehaviorAction1 -> On port: Port1, Operation: Interaction1
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


def SomeFunActivity
  OpaqueAction()
  OpaqueAction1()
  OpaqueAction2()
  
end

