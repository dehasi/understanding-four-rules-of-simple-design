require 'test/unit'

class Ch2Test < Test::Unit::TestCase

  def test_a_new_world_is_empty
    world = World.new
    assert_equal 0, world.living_cells.count
  end

  def test_a_cell_can_be_added_to_the_world
    world = World.new
    world.set_living_at(1, 1)
    assert_equal 1, world.living_cells.count
  end
end
