require_relative '../autogen/Class2.rb'

class Class1

  public
  def initialize
    @class2 = Class2.new
  
  end

  attr_accessor :class2
  attr_accessor :public_attribute
  

  protected
  attr_accessor :protected_attribute
  

  private
  
  
end
