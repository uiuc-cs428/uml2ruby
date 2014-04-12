
  #The activity "SomeFunActivity" has 15 nodes and 10 control flows
  #The initial node is called "The Good Node"
      #The Good Node
      #ControlFlow
  	    #DecisionNode
  	    #ControlFlow4
  		    #OpaqueAction2
  		    #ControlFlow5
  			    #ValueSpecificationAction1
  			    		#ValueSpecificationAction1 -> Output Pin: Result=, Value: IsLightOn=false
  			    #ControlFlow9
  				    #CallOperationAction1
  				    SaveThis=Class1.operation1_from_class(Parameter1)
  				    #ControlFlow10
  					    #CallBehaviorAction1
  					    		#RetParameter1= = CallBehaviorAction1 -> On port: Port1, Operation: Interaction1
  					        #FlowFinalNode
  						
  	    #DecisionNode
  	    #ControlFlow1
  		    #OpaqueAction
  		    #ControlFlow2
  			    #OpaqueAction1
  			        #ActivityFinalNode
  				
def OpaqueAction2
  #TODO fill in function
end

def OpaqueAction
  #TODO fill in function
end

def OpaqueAction1
  #TODO fill in function
end

def SomeFunActivity
  OpaqueAction2()
  OpaqueAction()
  OpaqueAction1()
  
end

