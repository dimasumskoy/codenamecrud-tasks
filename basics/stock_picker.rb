def stock_picker(prices)
  profits = []

  prices.each_with_index do |price, index|
    days_left = prices[index..-1]
    profits << days_left.max - price
  end

  to_buy = profits.index(profits.max)
  profits_left = prices[to_buy..-1]
  to_sell = prices.index(profits_left.max)

  [to_buy, to_sell]
end