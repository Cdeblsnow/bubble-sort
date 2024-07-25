puts "Please enter the numbers you are looking to sort"
number_array = gets.chomp.split(",")
number_array = number_array.map{|number| number.to_i}


def bubble_sort(array)
sorted_array = array
i = 1

  (array.length - i).times do |counter|
    accumulator = counter
    (array.length - accumulator).times do |iteration|
      current_index = iteration
      next_index = iteration + 1
      number = array[iteration]
      next_number = array[iteration+1]
      if next_number.nil? || number.nil?
        break
      elsif number > next_number
        sorted_array[current_index], sorted_array[next_index] = 
        sorted_array[next_index], sorted_array[current_index]    
      end
      accumulator += 1
    end
    i += 1
  end
  p sorted_array  
end

bubble_sort(number_array)