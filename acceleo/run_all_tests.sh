#Add a new line with a unique TUXML_OUTPUT_FILE name and Test::Unit file path
#for each user story.

#TUXML_OUTPUT_FILE=testUserStory.xml ruby acceleo/testing/user_story/ruby_unit/TestClass.rb --runner xml
TUXML_OUTPUT_FILE=testClassGeneralization.xml ruby acceleo/testing/generalization/ruby_unit/generalization_unit_test.rb --runner xml
TUXML_OUTPUT_FILE=testEmptyClasses.xml ruby acceleo/testing/empty_classes/ruby_unit/empty_class_unit_test.rb --runner xml
TUXML_OUTPUT_FILE=testClassAttributes.xml ruby acceleo/testing/class_attributes/ruby_unit/class_attributes_unit_test.rb --runner xml
echo 'Running Ruby unit tests'
