def stock_picker(lst)

  best_days = [-1,-1]
  profit = 0

  lst.each_with_index do |val, index|

    # For each given day, find the best day to sell AFTER that date.
    lst[index..-1].each_with_index do |val2, j|
      if val2 - val > profit
      profit = val2 - val
      best_days = [index, j + index]
      end
    end
  end

  if best_days == [-1,-1]
    return nil
  else
    best_days
  end
end