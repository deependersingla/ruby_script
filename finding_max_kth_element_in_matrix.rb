require "debugger"
def find_min(a)
   a.min
end

def fib(n)
	print n,"   "
	if n == 0
	  return 0
	elsif n ==1
	  return 1
	else
	  return fib(n-1) + fib(n-2)
	end
end

matrix = []
puts "enter element , comma between array element and t between two rows"
d = gets.chomp.split("t")
d.each do |row|
	row = row.split(",").map {|x| x.to_i}
	matrix.push(row)
end

#f = []
#f[0] = f[1] = 1
#for i in 2..n 
 # f[i] = f[i-1] + f[i-2] 
#end
