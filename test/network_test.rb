require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'
require './lib/show'
require './lib/network'

class Network_Test < Minitest::Test
  def setup
    @nbc = Network.new("NBC")
  end

  def test_it_exists
    assert_instance_of Network, @nbc
  end

  def test_it_has_a_name
    assert_equal "NBC", @nbc.name
  end

  def test_it_begins_with_no_shows
    assert_equal [], @nbc.shows
  end
end
