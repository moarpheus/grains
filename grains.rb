require 'byebug'

class Grains
  def self.square number
    raise ArgumentError unless number > 0 && number < 65
    holder = 1
    arr = []
    (1..number).size.times do
      arr << holder
      holder = holder * 2
    end
    arr.last
  end
  def self.total
    holder = 1
    arr = []
    (1..64).size.times do
      arr << holder
      holder = holder * 2
    end
    arr.inject(0, :+)
  end
end
