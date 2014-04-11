require 'test/unit'
require 'rubygems'
require 'tuxml'
require_relative '../autogen/Person.rb'
require_relative '../autogen/Skill.rb'

class TestAssociationClassSuite < Test::Unit::TestCase

  def test_person_is_valid_class
    person = Person.new
    assert_not_nil(person)
  end

  def test_skill_is_valid_class
    skill = Skill.new
    assert_not_nil(skill)
  end

  def test_competency_is_valid_class
    competency = Competency.new
    assert_not_nil(competency)
  end
  
  def test_person_association_class_uninitialized
    person = Person.new
    assert_equal(person.competency, nil)
  end

  def test_skill_association_class_uninitialized
    skill = Skill.new
    assert_equal(skill.competency, nil)
  end

  def test_competency_attribute
    competency = Competency.new
    competency.competency_level = 12
    assert_equal(competency.competency_level, 12)
  end
  
  def test_experience_operation
    experience = experience.new
    assert(defined? experience.get_years)
  end
  
end

