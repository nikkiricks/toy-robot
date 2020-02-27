require 'minitest/autorun'
require_relative 'Toyrobot'
require 'pry'

class ToyrobotTest < Minitest::Test

  def test_customer_input_for_24_cents
    # skip
    assert_equal [["1 * 20 cent coins\n"], ["2 * 2 cent coins\n"]], MoneyChanger.new(24).make_change
  end
end