def stock_picker(array_of_stock_prices)
  best_days = [0, 0]
  best_profit = 0
  array_of_stock_prices.each_with_index do |price, index|
    array_of_stock_prices.each_with_index do |next_day_price, next_index|
      next if index >= next_index
      current_profit = next_day_price - price
      if current_profit > best_profit
        best_profit = current_profit
        best_days[0] = index
        best_days[1] = next_index
      end
    end
  end
  puts "#{best_days} for a profit of #{best_profit}"
end

stock_picker([17,3,6,17,15,8,6,1,10,18])
