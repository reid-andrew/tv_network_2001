require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'
require './lib/show'

class Show_Test < Minitest::Test

  def setup
    @kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    @michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    @knight_rider = Show.new
  end

  def test_it_exists
    assert_instance_of Show, @knight_rider
  end

end
