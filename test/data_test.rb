require "minitest/autorun"
require_relative "../core/data"

class DataTest < Minitest::Test
  def setup
    @data = Data.new
  end

  def test_value
    assert_equal 10, @data.value
  end
end
