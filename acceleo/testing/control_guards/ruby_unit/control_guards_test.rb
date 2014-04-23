require 'test/unit'
require 'rubygems'
require 'tuxml'
require_relative '../autogen/ControlGuards.rb'

class TestControlGuardsSuite < Test::Unit::TestCase

  def test_logic_order()
    lines = File.open('acceleo/testing/control_guards/autogen/ControlGuards.rb').readlines
    conditionals = [
      "  #if order == rush\n",
      "  #if order == priority\n",
      "  #else\n"
    ]
    calls = [
      "  Rush_Order()\n",
      "  Priority_Order()\n",
      "  Standard_Order()\n"
    ]
    line_nums = {}

    # ensure that the calls proceed the conditionals
    (0..2).each do |i|
      assert(lines.include? conditionals[i])
      line_nums[i] = lines.index(conditionals[i])
      assert(lines[line_nums[i]+1] == calls[i])
      i += 1
    end

    # ensure the else clause is last
    assert(line_nums[2] > line_nums[0])
    assert(line_nums[2] > line_nums[1])

  end
end
