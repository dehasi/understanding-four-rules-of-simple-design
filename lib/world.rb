# frozen_string_literal: true

# this class represents the world og Conway game of life
class Location
  attr_reader :x, :y
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
  attr_reader :location
end

class DeadCell
  attr_reader :location
end
