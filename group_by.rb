d=[1..7]#.sum
c=(1..7).group_by { |j| j+5}   #=> {0=>[3, 6], 1=>[1, 4], 2=>[2, 5]}
print c
print d
c=[1,2,3]
e=c.sum
print e
