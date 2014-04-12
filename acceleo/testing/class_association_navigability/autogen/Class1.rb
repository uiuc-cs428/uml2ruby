require_relative 'Class2.rb'
require_relative 'Class3.rb'

class Class1

  public
  def initialize
    @class3 = Class3.new
    @class2 = Class2.new
  
  end

  protected
  attr_accessor :class3
  
  private
  attr_accessor :class2
  
end
