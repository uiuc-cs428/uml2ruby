require 'test/unit'
require 'rubygems'
require 'tuxml'

class TestActivityCommentsNodeSuite < Test::Unit::TestCase
  def assertStringInFile(fileName, string)
    generatedCode = File.open(fileName).read
    assert(generatedCode.include?(string))
  end
  
  def test_activity_intent_comment
    assertStringInFile('acceleo/testing/call_operation/autogen/Activity1.rb', '#User comment about the intention of the activity')
  end
  
  def test_design_decision_comment
    assertStringInFile('acceleo/testing/call_operation/autogen/Activity1.rb', '#Interesting details about design decisions')
  end
end
