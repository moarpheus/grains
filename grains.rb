class Grains
  class << self
    def square number
      raise ArgumentError unless number > 0 && number < 65
      complete_squares_array(number).last
    end

    def total
      complete_squares_array(64).inject(0, :+)
    end

    private

    def complete_squares_array number
      (1..number-1).inject([1]) { |acc, num| acc << acc.last * 2; acc }
    end
  end
end
