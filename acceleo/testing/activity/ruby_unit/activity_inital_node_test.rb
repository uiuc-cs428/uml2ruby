require 'test/unit'
require 'rubygems'
require 'tuxml'

class TestInitialNodeSuite < Test::Unit::TestCase
  def test_initial_node
    generatedCode = File.open('acceleo/testing/activity/autogen/SomeFunActivity.rb').readlines
    assert(generatedCode[1].include?('The Good Node'))
  end
end