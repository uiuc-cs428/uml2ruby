require 'test/unit'
require 'rubygems'
require 'tuxml'

class TestActivityCommentsSuite < Test::Unit::TestCase
  def assertStringInFile(fileName, string)
    generatedCode = File.open(fileName).read
    assert(generatedCode.include?(string))
  end
  
  def test_activity_intent_comment
    assertStringInFile('acceleo/testing/activity_comments/autogen/SomeFunActivity.rb', '#User comment about the intention of the activity')
  end
  
  def test_design_decision_comment
    assertStringInFile('acceleo/testing/activity_comments/autogen/SomeFunActivity.rb', '#Interesting details about design decisions')
  end

end