puts "Please enter the numbers you are looking to sort"
number_array = gets.chomp.split(",")
number_array = number_array.map{|number| number.to_i}


def bubble_sort(array)
sorted_array = number_array
accumulator = 0

  (array.length - 1).times do |counter|
    
    (array.length - accumulator).times do |iteration|
      number = array[iteration]
      next_number = array[iteration+1]
      if number > next_number
        sorted_array[number] = sorted_array[next_number]  
        sorted_array[next_number]= sorted_array[number]
      end
      accumulator += 1
    end
    if sorted_array = array.sort
      break
    end
  end
  p sorted_array  
end

bubble_sort(number_array)