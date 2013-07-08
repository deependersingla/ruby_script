def array(a)
@array=a
#print @array
 for i in 0...@array.length-1
  if (i==1 or i.odd?)
	 #print i
	 @array[i]=@array[i+1]
  end
 i=i+1
 end
m=@array.uniq
return m 
end
print " enter n "
d=gets.chomp
d=d.to_i
j=0
#d.chomp
#print d
#print " ia m here"
#print d.type
c=(1..d).to_a
k=c
for l in 0..d
print "i am here"
k=array(k)
k=k.to_a
print k
 if (k[1].nil?)
  break
 end
end
print k

