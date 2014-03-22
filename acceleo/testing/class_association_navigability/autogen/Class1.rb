require_relative '../autogen/Class3.rb'

require_relative '../autogen/Class2.rb'

class Class1

  public
  def initialize
    @class2 = Class2.new
    @class3 = Class3.new
  
  end

  
  

  protected
  attr_accessor :class3
  

  private
  attr_accessor :class2
  
end
