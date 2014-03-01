require "debugger"
def binary_search(array, value, from=0, to=nil)
  flag = 0
  #debugger
  if to == nil
    to = array.count - 1
  end
 
  mid = (from + to) / 2
 
  if value < array[mid] && array[from] < array[to] && to > 0
  	 puts "I am in value < "
    return binary_search array, value, from, mid - 1

  elsif value > array[mid] && array[from] < array[to]
  	 puts "I am in value > "
    return binary_search array, value, mid + 1, to
 
  else  
     return mid,array[mid]
  end
end
puts "Enter the array, give comma between two elements"
array = gets.chomp.split(",").map{ |x| x.to_i}
puts " enter value"
value = gets.chomp.to_i
position,value_return = binary_search(array, value)
if(value == value_return)
	puts  " We got it",value
else
	puts "value near to it",value_return,"is at postion",position
end