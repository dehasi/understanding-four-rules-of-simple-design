require 'test/unit'

class Ch2Test < Test::Unit::TestCase

  def test_a_new_world_is_empty
    world = World.new

    assert_true world.empty?
  end

  def test_a_cell_can_be_added_to_the_world
    world = World.new

    world.set_living_at(1, 1)

    assert_true world.alive_at?(1, 1)
  end

  def test_after_adding_a_cell_the_world_is_not_empty
    world = World.new

    world.set_living_at(1, 1)

    assert_false world.empty?
  end
end
