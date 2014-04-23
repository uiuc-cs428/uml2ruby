require 'test/unit'
require 'rubygems'
require 'tuxml'
require_relative '../autogen/Activity1.rb'

class TestActivityPinSuite < Test::Unit::TestCase
  def test_return_type()
    theObject = opaqueAction()
    assert_equal(theObject.class, ClassToPass)
  end

  def test_input
    theObject = ClassToPass.new
    opaqueAction1(theObject)
    assert(true)
  end

  def test_activity
    activity1()
  end
    
end
