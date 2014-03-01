require "debugger"
$count = 0

#finding_max_cross_subarray
def max_cross_array(a,left,right,mid)
  left_sum = -1.0/0
  sum = 0
  diff = mid-left
  for i in 0..diff
	sum = sum + a[diff-i]
	if sum > left_sum
		left_sum = sum
		max_left = diff-i
	end
  end
  right_sum = -1.0/0
  sum = 0
  for i in mid+1..right
	sum = sum + a[i]
	if sum > right_sum
	  right_sum = sum
	  max_right = i
	end
  end
  return max_left,max_right,left_sum+right_sum
end

def find_max_subarray(a,low,high)
  if high == low
    return low,high,a[low]
  else mid = (low + high) / 2
	left_low,left_high,left_sum     = find_max_subarray(a,low,mid)
	right_low,right_high,right_sum  = find_max_subarray(a,mid+1,high)
	cross_low,cross_right,cross_sum = max_cross_array(a,low,high,mid)
	if left_sum > right_sum && left_sum > cross_sum
		return left_low,left_high,left_sum
	elsif right_sum > left_sum && right_sum > cross_sum
		return right_low,right_high,right_sum
	else 
		return cross_low,cross_right,cross_sum
	end
  end
end

puts "enter element"
a = gets.chomp.split(",").map{ |x| x.to_i}
right = a.length - 1
print find_max_subarray(a,0,right)