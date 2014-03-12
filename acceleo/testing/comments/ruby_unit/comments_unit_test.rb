require 'test/unit'
require 'rubygems'
require 'tuxml'
require_relative '../autogen/Class1.rb'
require_relative '../ruby_unit/Class1Expected.rb'

class CommentsClassSuite < Test::Unit::TestCase

  def test_expected_matches_generated_Class1
    autogen = "acceleo/testing/comments/autogen/Class1.rb"
    expected = "acceleo/testing/comments/ruby_unit/Class1Expected.rb"
    
    generatedCode = File.open(autogen).readlines
    expectedCode = File.open(expected).readlines
    assert_equal(generatedCode, expectedCode)
  end

end
