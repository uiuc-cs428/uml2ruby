  #The activity "SomeFunActivity" has 9 nodes and 7 control flows
  #The initial node is called "The Good Node"
  	#The Good Node
  	  #ControlFlow
        	#DecisionNode
        	  #ControlFlow1
              	#OpaqueAction
              	  #ControlFlow2
                    	#OpaqueAction1
                    	  #ControlFlow3
                          	#ActivityFinalNode
                          
                    
              
        	  #ControlFlow4
              	#OpaqueAction2
              	  #ControlFlow5
                    #ValueSpecificationAction1 -> Output Pin: Result, Value: IsLightOn=false	#ValueSpecificationAction1
                    	  #ControlFlow6
                          	#FlowFinalNode
                          
                    
              
        
  
