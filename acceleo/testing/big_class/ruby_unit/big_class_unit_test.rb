require 'test/unit'
require 'tuxml'
require_relative '../autogen/Argument.rb'
require_relative '../autogen/Attribute.rb'
#require_relative '../autogen/ClassDiagram.rb'
require_relative '../autogen/ClassObject.rb'
require_relative '../autogen/Generator.rb'
require_relative '../autogen/Method.rb'
#require_relative '../autogen/SequenceDiagram.rb'
require_relative '../autogen/SequenceObject.rb'
require_relative '../autogen/UMLDiagram.rb'

class ClassDiagramIntegrationSuite < Test::Unit::TestCase

  def test_argument_class
    assert_nothing_raised NameError do
      argument = Argument.new
    end
  end

  def test_attribute_class
    assert_nothing_raised NameError do
      attribute = Attribute.new
    end
  end

  def test_classdiagram_class
    assert_nothing_raised NameError do
      class_diagram = ClassDiagram.new
    end
  end

  def test_classobject_class
    assert_nothing_raised NameError do
      class_object = ClassObject.new
    end
  end

  def test_generator_class
    assert_nothing_raised NameError do
      generator = Generator.new
    end
  end

  def test_method_class
    assert_nothing_raised NameError do
      method = Method.new
    end
  end

  def test_sequencediagram_class
    assert_nothing_raised NameError do
      sequence_diagram = SequenceDiagram.new
    end
  end

  def test_sequenceobject_class
    assert_nothing_raised NameError do
      sequence_object = SequenceObject.new
    end
  end

  def test_umldiagram_class
    assert_nothing_raised NameError do
      uml_diagram = UMLDiagram.new
    end
  end
end
