require 'test/unit'

class Ch2Test < Test::Unit::TestCase

  def test_an_empty_world_stays_empty_after_a_tick
    world = World.new

    next_world = world.tick

    assert_true next_world.empty?
  end

  def test_a_new_world_is_empty
    assert_true World.new.empty?
  end

  def test_a_cell_can_be_added_to_the_world
    world = World.new
    location = Location.random

    world.set_living_at(location)

    assert_true world.alive_at?(location)
  end

  def test_after_adding_a_cell_the_world_is_not_empty
    world = World.new
    location = Location.random

    world.set_living_at(location)

    assert_false world.empty?
  end
end
