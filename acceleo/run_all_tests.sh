#Add a new line with a unique TUXML_OUTPUT_FILE name and Test::Unit file path
#for each user story.

#TUXML_OUTPUT_FILE=testUserStory.xml ruby testing/user_story/ruby_unit/TestClass.rb --runner xml
TUXML_OUTPUT_FILE=testClassGeneralization.xml ruby testing/generalization/ruby_unit/generalization_unit_test.rb --runner xml
echo 'Running Ruby unit tests'
