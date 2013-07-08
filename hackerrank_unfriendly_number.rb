#There is one friendly number and N unfriendly numbers. We want to find how many numbers are there
# which exactly divide the friendly number, but does not divide any of the unfriendly numbers.
def check_inside_array(u,i)
    for j in i+1..$y.length-1
	z=0
        if($y[j]%u==0)
		#puts " I am inside check_inside_if loop"
            z=1
			break
        end
     end
if (z==1)
return 0
else 
return 1
end
end
#myArray = STDIN.to_a
#k=myArray[0]
#j=myArray[0].split
#m=myArray[1].split
#j=j.collect{|i| i.to_i}
#m=m.collect{|i| i.to_i}
m=[2,5,7,8,3,4,3,18]
j=[8,16]
m=m.sort
$y=m.uniq
#print $y
#print $y[2]
l=0
for i in 0..$y.length-1
    if(j[1]%$y[i]==0)
	
        z=check_inside_array($y[i],i)
        if(z==1)
            l=l+1
        end
    end
end
print l 