def stock_picker(stock_prices)
  day_pair = []

  price_day_map = stock_prices.each_with_index.reduce(Hash.new { |hash, key| hash[key] = [] }) do |hash, (price, day)|
    hash[price].push(day)
    hash
  end

  max_price_diff = 0

  stock_prices.uniq.sort.reverse.each_with_index do |price, i|
    max_day = price_day_map[price].max
    max_price = price
    min_day = nil

    next if(max_day == 0)

    min_price = stock_prices.take(max_day).min
    min_day = stock_prices.take(max_day).find_index(min_price)

    price_diff = max_price - min_price

    if price_diff > max_price_diff
      max_price_diff = price_diff
      day_pair = [min_day, max_day]
    end
  end

  day_pair
end

p stock_picker([17,3,6,9,15,8,6,1,10])
# => [1,4]
p stock_picker([17,3,6,9,15,8,6,20,12,14,2,9,18,5])
# => [1,7]
