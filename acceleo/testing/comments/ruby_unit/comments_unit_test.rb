require 'test/unit'
require 'rubygems'
require 'tuxml'
require_relative '../autogen/Class1.rb'

class CommentsClassSuite < Test::Unit::TestCase

  def test_expected_matches_generated_Class1
    autogen = "acceleo/testing/comments/autogen/Class1.rb"

    generated_code = File.open(autogen).readlines
    expected_code_snippet = [
      "# Attached Comment\n",
      "class Class1\n"
    ]
    assert_equal(generatedCode.include? expected_code_snippet)
  end

end
