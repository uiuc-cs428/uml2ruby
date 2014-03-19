require 'test/unit'
require 'tuxml'
require_relative '../autogen/Argument.rb'
require_relative '../autogen/Attribute.rb'
#require_relative '../autogen/ClassDiagram.rb'
require_relative '../autogen/ClassObject.rb'
require_relative '../autogen/Generator.rb'
require_relative '../autogen/ClassMethod.rb'
#require_relative '../autogen/SequenceDiagram.rb'
require_relative '../autogen/SequenceObject.rb'
require_relative '../autogen/UMLDiagram.rb'

class ClassDiagramIntegrationSuite < Test::Unit::TestCase

  def test_argument_class
    argument = nil
    assert_nothing_raised NameError do
      argument = Argument.new
    end
    assert_nothing_raised NoMethodError do
      argument.name = "arg1"
      argument.direction = "in"
    end
    assert_equal(argument.name, "arg1")
    assert_equal(argument.direction, "in")
    assert_equal(argument.default_value, nil)
  end

  def test_attribute_class
    attribute = nil
    assert_nothing_raised NameError do
      attribute = Attribute.new
    end
    assert_nothing_raised NoMethodError do
      attribute.name = "name"
      attribute.visibility = "public"
      attribute.type = "String"
    end
    assert_equal(attribute.name, "name")
    assert_equal(attribute.visibility, "public")
    assert_equal(attribute.type, "String")
    assert_equal(attribute.default_value, nil)
  end

=begin
  def test_classdiagram_class
    class_diagram = nil
    assert_nothing_raised NameError do
      class_diagram = ClassDiagram.new
    end
    assert(ClassDiagram < UMLDiagram)

    assert_nothing_raised NoMethodError do
      class_diagram.classes = [ClassObject.new]
    end
  end
=end

  def test_classobject_class
    food = nil
    fruit = nil
    apple = nil
    assert_nothing_raised NameError do
      food = ClassObject.new
      fruit = ClassObject.new
      apple = ClassObject.new
    end
    assert_nothing_raised NoMethodError do
      food.name = "Food"
      fruit.name = "Fruit"
      apple.name = "Apple"

      apple.parent = fruit
      fruit.parent = food
    end
    assert_equal(apple.parent, fruit)
    assert_equal(fruit.parent, food)

    assert_equal(apple.name, "Apple")
    assert_equal(apple.methods, nil)
    assert_equal(apple.attributes, nil)
  end

  def test_generator_class
    generator = nil
    assert_nothing_raised NameError do
      generator = Generator.new
    end

    assert(defined? generator.generate_ruby)

    code = nil
    assert_nothing_raised ArgumentError do
      code = generator.generate_ruby("path/to/uml", "./output")
    end
    assert_equal(code, "")
  end

  def test_method_class
    method = nil
    assert_nothing_raised NameError do
      method = ClassMethod.new
    end
    assert_nothing_raised NoMethodError do
      method.name = "foo"
      method.visibility = "public"
      method.arguments = [Argument.new]
    end
    assert_equal(method.name, "foo")
    assert_equal(method.visibility, "public")
    assert_equal(method.arguments.size, 1)
  end

=begin
  def test_sequencediagram_class
    assert_nothing_raised NameError do
      sequence_diagram = SequenceDiagram.new
    end
    assert(SequenceDiagram < UMLDiagram)

    assert_nothing_raised NoMethodError do
      sequence_diagram.sequences = [SequenceObject.new]
      sequence_diagram.classes = [ClassObject.new]
    end
  end
=end

  def test_sequenceobject_class
    sequence_object = nil
    assert_nothing_raised NameError do
      sequence_object = SequenceObject.new
    end

    foo = nil
    bar = nil
    assert_nothing_raised NoMethodError do
      foo = ClassMethod.new
      bar = ClassMethod.new
      sequence_object.method_invocations = [foo, bar]
    end

    assert_equal(sequence_object.method_invocations.first, foo)
    assert_equal(sequence.object.method_invocations.last, bar)
  end

  def test_umldiagram_class
    assert_nothing_raised NameError do
      uml_diagram = UMLDiagram.new
    end
  end
end
