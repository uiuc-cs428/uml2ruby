require 'test/unit'
require 'rubygems'
require 'tuxml'
require_relative '../autogen/Process_Order.rb'

class BigActivitySuite < Test::Unit::TestCase

  def test_method_close_order
      assert(close_Order == 1)
  end
end
