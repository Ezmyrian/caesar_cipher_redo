 #Take in array of stock prices
  #init variable to hold highest profit and the day to buy/sell
  #check for each day in the array what the difference would be between it and the remaining days
  #  and store the highest result in the highest profit variable to compare the remaining checks.
  #return the best days to buy and sell.



def stock_picker(stock_prices)
  best_days = []
  highest_profit = 0
  compare_price = 0
  stock_prices.each_with_index do |price, index|
    stock_prices.each_with_index do |price_check, second_index|
      compare_price = price_check - price
      if compare_price > highest_profit && second_index > index
        highest_profit = compare_price
        best_days[0] = index
        best_days[1] = second_index
      else
        next
      end
    end
  end
  p best_days 
end

stock_picker([17,3,6,9,15,8,6,1,10])