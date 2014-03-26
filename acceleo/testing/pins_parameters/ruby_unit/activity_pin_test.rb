require 'test/unit'
require 'rubygems'
require 'tuxml'
require_relative '../autogen/Activity1.rb'

class TestActivityPinSuite < Test::Unit::TestCase
  def test_return_type()
    theObject = OpaqueAction()
    assert_equal(theObject.class, ClassToPass)
  end

  def test_input
    theObject = ClassToPass.new
    OpaqueAction1(theObject)
    assert(true)
  end
    
end
