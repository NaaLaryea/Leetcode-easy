# implement linear search on an ordered Array

def linear_search(array, search_value)
  array.each_with_index do |element, index|
    if element == search_value
      return index
    elsif element > search_value
      break
    end
  end
  return "Search value not present"
end

p linear_search([2, 3, 5, 6, 7, 8, 9, 10], 10)

# implement binary search on an ordered Array

def binary_search(array, search_value)
  lower_bound = 0
  upper_bound = array.length - 1
  
  while lower_bound <= upper_bound do
    midpoint = (lower_bound + upper_bound)/2
    value_at_midpoint = array[midpoint]

    if search_value == value_at_midpoint
      return midpoint
    elsif search_value > value_at_midpoint
      lower_bound = midpoint + 1
    elsif search_value < value_at_midpoint
      upper_bound = midpoint - 1
    end
  end
  return "Search value not present"
end

p binary_search([2, 3, 5, 6, 7, 8, 9, 10], 11)
