def stock_picker(stock_prices)
  pair_combos = stock_prices.combination(2).to_a
  max_profit_combo = pair_combos.max_by { |buy, sell| sell - buy }
  buy_day = stock_prices.index(max_profit_combo[0])
  sell_day = stock_prices.rindex(max_profit_combo[1])

  [buy_day, sell_day]
end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
# => [1,4]
p stock_picker([17, 3, 6, 9, 15, 8, 6, 20, 12, 14, 2, 9, 18, 5])
# => [1,7]
