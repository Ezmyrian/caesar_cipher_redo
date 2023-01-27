def bubble_sort(number_array)
  sorted_array = number_array
  counter = sorted_array.length - 2
  iterations = sorted_array.length - 1
  
  while iterations > 0
    for i in 0..counter
      if sorted_array[i] > sorted_array[i + 1]
        temp_number = sorted_array[i]
        sorted_array[i] = sorted_array[i + 1]
        sorted_array[i + 1] = temp_number   
      end
    end
    iterations -= 1 
  end
  
  puts sorted_array
end

bubble_sort([4,3,78,2,0,2])

