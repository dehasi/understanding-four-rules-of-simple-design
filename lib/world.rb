# frozen_string_literal: true

class Coordinate
  attr_reader :x, :y
  attr_reader :cell

  def neighbours
    # calculate a list of locations
    # that are considered neighbours
  end

  def equals?(other_location, if_equal)
    other_location.equals_coordinate?(self.x, self.y, if_equal)
    nil
  end

  def equals_coordinate?(other_x, other_y, if_equal)
    if self.x == other_x && self.y == other_y
      if_equal.call
    end
    nil
  end
end

class World

  def set_living_at(location)
    # code here
  end

  def alive_at?(location)
    # code here
  end
end

class LivingCell
  def stays_alive?(number_of_neighbours)
    number_of_neighbours == 2 || number_of_neighbours == 3
  end
end

class DeadCell
  def comes_to_life?(number_of_neighbours)
    number_of_neighbours == 3
  end
end

class ZombieCell
  def alive_in_next_generation?
    # some other rules
  end
end