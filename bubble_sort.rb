puts "Please enter the numbers you are looking to sort"
number_array = gets.chomp.split(",")
number_array = number_array.map{|number| number.to_i}
comparative_array = number_array.sort


def bubble_sort(array)

end

bubble_sort(number_array)