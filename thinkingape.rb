def initial(e)
e.delete_if &:even?
return e
end
def even_out(arr)
k=arr.reject {|v| arr.index(v).even?}   # delete number at even index
return k
end

def odd_out(arr)
k=arr.reject {|v| arr.index(v).odd?}   # delete number at odd index
return k
end
print " enter n "   # user input 
d=gets.chomp
d=d.to_i    # as it will consider it as a string
c=(1..d).to_a
f=initial(c)
print f
g=f.include?(d)
#print g
z=2
while(z>1)
if(g==true)
y=even_out(f)
else
y=odd_out(f)
end
print y.length
z=y.length
print "i am inside while"
f=y
end
print y

