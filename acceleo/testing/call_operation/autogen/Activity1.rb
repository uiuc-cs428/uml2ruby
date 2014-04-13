
# The activity "Activity1" has 11 nodes and 4 control flows 
  # The initial node is called "InitialNode1"
      #InitialNode1
      invalid.invalid()
      #ControlFlow1
  	    #CallOperationAction1
  	    SaveThis=Class1.operation1(Parameter1)
  	    #ControlFlow2
  		    #CallOperationAction2
  		    Class1.operation2(Parameter1)
  		    #ControlFlow3
  			    #CallOperationAction3
  			    Class2.operation1()
  			        #ActivityFinalNode1
  				
def Activity1
  
end
