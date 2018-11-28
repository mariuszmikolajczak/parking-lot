class SpecialParkingSpotService
  SPOT_SIZE = 50

  def initialize(cars)
    @cars = cars
  end

  def max_profit
    not_efficient
  end

  def not_efficient # rubocop:disable Metrics/AbcSize, Metrics/MethodLength
    sorted_cars = cars.dup.sort_by(&:size)

    results = []
    results_prices = []

    puts sorted_cars.inspect

    while sorted_cars.present?
      combination = []
      price = 0
      remain_size = SPOT_SIZE
      while (car = sorted_cars.pop).present?
        if car.size > remain_size
          sorted_cars.push(car)
          break
        end
        remain_size -= car.size
        combination.push(car)
        price += car.price
      end
      results.push(combination)
      results_prices.push(price)
    end

    puts results_prices.inspect
    puts results.inspect

    results[results_prices.index(results_prices.max)]
  end

  def efficient
    # no time left :(
  end

  private

  attr_reader :cars
end
