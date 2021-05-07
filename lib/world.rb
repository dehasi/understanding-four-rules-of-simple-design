# frozen_string_literal: true

# this class represents the world og Conway game of life
class Location
  attr_reader :x, :y

  def neighbours
    # calculate a list of locations
    # that are considered neighbours
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

class Cell
  attr_reader :alive # true | false

  def alive_in_next_generation?
    (alive && number_of_neighbours == 2) ||
      number_of_neighbours == 3

    if alive
      number_of_neighbours == 2 ||
        number_of_neighbours == 3
    else
      number_of_neighbours == 3
    end

    if alive
      stable_neighbourhood?
    else
      genetically_fertile_neighbourhood?
    end
  end
end

class LivingCell
  attr_reader :location
end

class DeadCell
  attr_reader :location
end
