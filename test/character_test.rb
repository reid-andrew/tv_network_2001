require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'

class Character_Test < Minitest::Test

  def setup
    @kitt = Character.new
  end

  def test_it_exists
    assert_instance_of Character, @kitt
  end

end
