require "debugger"
puts "enter element"
a = gets.chomp.split(",").map{ |x| x.to_i}
s  = []
opening_index = 0
closing_index = 0
s.push(a[0])
max = s[0]
for i in 1..a.length-1
	#debugger
	if(s[i-1]+a[i] > a[i])
		s[i] = s[i-1] + a[i]
    else
    	opening_index = i
    	s[i] = a[i]
    end
    if(s[i] > max)
    	max = s[i]
    	closing_index = i
    end
end
puts max,opening_index,closing_index
