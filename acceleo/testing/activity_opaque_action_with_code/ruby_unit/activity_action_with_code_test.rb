require 'test/unit'
require 'rubygems'
require 'tuxml'

require_relative '../autogen/Activity1'

class TestActionWithCode < Test::Unit::TestCase
  
  def test_opaque_action_with_ruby
    assert(opaque_action_with_ruby == 42)
  end
  
  def test_opaque_action_ruby_nocode
    assert(opaque_action_ruby_nocode == nil)
  end
  
  def test_opaque_action_other_language
    assert(opaque_action_other_language == nil)
  end
  
  def test_opaque_action_ruby_and_other
    assert(opaque_action_ruby_and_other == 42)
  end
  
  def test_opaque_action_ruby_external
      assert(opaque_action_ruby_external == "external file")
  end
end