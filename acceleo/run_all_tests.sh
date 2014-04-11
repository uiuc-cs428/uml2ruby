#Add a new line with a unique TUXML_OUTPUT_FILE name and Test::Unit file path
#for each user story.

echo 'Running Ruby unit tests'

#TUXML_OUTPUT_FILE=testUserStory.xml ruby acceleo/testing/user_story/ruby_unit/TestClass.rb --runner xml
TUXML_OUTPUT_FILE=testClassGeneralization.xml ruby acceleo/testing/generalization/ruby_unit/generalization_unit_test.rb --runner xml
TUXML_OUTPUT_FILE=testEmptyClasses.xml ruby acceleo/testing/empty_classes/ruby_unit/empty_class_unit_test.rb --runner xml
TUXML_OUTPUT_FILE=testClassAttributes.xml ruby acceleo/testing/class_attributes/ruby_unit/class_attributes_unit_test.rb --runner xml
TUXML_OUTPUT_FILE=testDefaultValues.xml ruby acceleo/testing/default_values/ruby_unit/default_values_unit_test.rb --runner xml
TUXML_OUTPUT_FILE=testClassMethods.xml ruby acceleo/testing/class_methods/ruby_unit/class_methods_unit_test.rb --runner xml
TUXML_OUTPUT_FILE=testClassQualifier.xml ruby acceleo/testing/class_qualifier/ruby_unit/qualifier_unit_test.rb --runner xml
TUXML_OUTPUT_FILE=testComments.xml ruby acceleo/testing/comments/ruby_unit/comments_unit_test.rb --runner xml
TUXML_OUTPUT_FILE=testDependency.xml ruby acceleo/testing/dependency/ruby_unit/dependency_unit_test.rb --runner xml
TUXML_OUTPUT_FILE=testAssociations.xml ruby acceleo/testing/class_association_navigability/ruby_unit/class_association_nav_test.rb --runner xml
TUXML_OUTPUT_FILE=testMultiplicities.xml ruby acceleo/testing/multiplicities/ruby_unit/multiplicities_unit_test.rb --runner xml
TUXML_OUTPUT_FILE=testBigClass.xml ruby acceleo/testing/big_class/ruby_unit/big_class_unit_test.rb --runner xml
TUXML_OUTPUT_FILE=testActivity.xml ruby acceleo/testing/activity/ruby_unit/activity_node_test.rb --runner xml
TUXML_OUTPUT_FILE=testActivityPins.xml ruby acceleo/testing/pins_parameters/ruby_unit/activity_pin_test.rb --runner xml
TUXML_OUTPUT_FILE=testActionRubyCode.xml ruby acceleo/testing/activity_opaque_action_with_code/ruby_unit/activity_action_with_code_test.rb --runner xml
TUXML_OUTPUT_FILE=testControlGuards.xml ruby acceleo/testing/control_guards/ruby_unit/control_guards_test.rb --runner xml
TUXML_OUTPUT_FILE=testValueSpecificationAction.xml ruby acceleo/testing/value_specification_action/ruby_unit/value_specification_action_test.rb --runner xml
