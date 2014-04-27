require 'test/unit'
require 'rubygems'
require 'tuxml'
require 'set'

class TestActivityCallOperationNodeSuite < Test::Unit::TestCase
  def assertRegexInFile(fileName, string)
    assert(regexFoundInFile(fileName, string), "String not found: " + string)      
  end

  def regexFoundInFile(fileName, string)
    File.open(fileName, "r") do |file|
      file.each do |line|
        if(  line.match(string) )
          return true
        end
      end
  
      return false
    end
  end
 
  def test_result_assigned_to_class
    assertRegexInFile('acceleo/testing/call_operation/autogen/Activity1.rb', '^\s*saveThis\s*\=\s*Class1.operation1.*')
  end
  
  def test_result_assigned_to_user_defined_var
    assertRegexInFile('acceleo/testing/call_operation/autogen/Activity1.rb', '^\s*saveThis\s*\=\s*Class1.operation1.*')
    assertRegexInFile('acceleo/testing/call_operation/autogen/Activity1.rb', '^\s*saveThat\s*\=\s*Class1.operation1.*')
  end
  
  def test_call_params_sorted_alphabetically
    assertRegexInFile('acceleo/testing/call_operation/autogen/Activity1.rb', '^\s.*Class1.operation1\(aParameter, parameter1, qParameter\)')
  end

  def test_define_params_sorted_alphabetically
    assertRegexInFile('acceleo/testing/call_operation/autogen/Class1.rb', '.*operation1\(aParameter.+parameter1.+qParameter\).*')
  end
   
  def test_class_operation_without_result
    assertRegexInFile('acceleo/testing/call_operation/autogen/Activity1.rb', '^\s*Class1.operation2\(parameter1\)')
  end
  
  def test_class_operation_with_no_parameter
    assertRegexInFile('acceleo/testing/call_operation/autogen/Activity1.rb', '^\s*Class2.operation1\(\)')
  end
  
  def test_multi_dependency
    autogen = "acceleo/testing/call_operation/autogen/Activity1.rb"

    require_statements = Set.new []
    File.open(autogen).each do |line|
      if (line =~ /^require.+\'.+\'.*/)
        puts line
        uniqueAdd = require_statements.add?(line);

        assert_not_nil(uniqueAdd, "Duplicate require statement found: " + line)
      end
    end
  end
end