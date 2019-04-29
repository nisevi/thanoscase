# frozen_string_literal: true

class String
  def thanoscase!
    return self if empty?
    half_universe = length/2
    half_universe.times { slice!(rand(length)) }
    self
  end

  def thanoscase
    dup.thanoscase!
  end
end
