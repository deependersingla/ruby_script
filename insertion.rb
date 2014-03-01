require "debugger"

class Insertion

  def find_number_index(array,element)
     position,value_return = modified_binary_search(array,element)
     if(element == value_return)
       return position,flag =0
     else
     	 flag = 1
	     if(value_return>element)
	 	     return position,flag
	     else
         return position+1,flag
       end
     end
  end

  def modified_binary_search(array, value, from=0, to=nil)
    flag = 0
    if to == nil
      to = array.count - 1
    end
    mid = (from + to) / 2
    if value < array[mid] && array[from] < array[to] && to > 0
      return modified_binary_search array, value, from, mid - 1
    elsif value > array[mid] && array[from] < array[to] && to > 0
      return modified_binary_search array, value, mid + 1, to
    else  
     return mid,array[mid]
    end
  end

  def enter_array(a)
    #puts "Enter the array, give comma between two elements"
    #a = gets.chomp.split(",").map{ |x| x.to_i}
    a.each_index do |x|
      if(x > 1)
  	    position,flag = find_number_index(a[0..x-1],a[x])
        
        if(position < 0)
          position = 0
        end
        temp = a[x]
        diff = x-1-position
        for i in 0..diff
    	    a[x-i] = a[x-i-1]
  	    end
  	    a[position] = temp
      elsif x ==0
      else
  	  # when index at 1
  	    if(a[x] > a[x-1])
        #do nothing
        else
  		    temp = a[x]
  		    a[x] = a[x-1]
  		    a[x-1] = temp
  	    end
      end
    end 
   a
 end
end

#Insertion.new.enter_array()
describe Insertion, "sort" do
  it "returns correct sorted value" do
    bowling = Insertion.new
    bowling.enter_array([3,2,1]).should eq([1,2,3])
    bowling.enter_array([3,2,-1]).should eq([-1,2,3])
    bowling.enter_array([3,2,1,0,-1,-1]).should eq([-1,-1,0,1,2,3])
    #bowling.enter_array.should eq([1,2,3])
  end
end