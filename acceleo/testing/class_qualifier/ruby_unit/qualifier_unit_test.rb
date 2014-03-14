require 'test/unit'
require 'rubygems'
require 'tuxml'
require_relative '../autogen/Bank.rb'
require_relative '../autogen/Customer.rb'

class TestQualifierSuite < Test::Unit::TestCase
  def test_qualifier_interface
    bank = Bank.new
    customer = Customer.new

    bank.addCustomer(1234, customer)
    assert_equal(bank.getCustomer(1234), customer)
  
    bank.removeCustomer(1234);
    assert_equal(bank.getCustomer(1234), nil)
  end

end
