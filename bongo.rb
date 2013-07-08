# first we need to generte a randon number array from 1-25
def matrix_zero(b,d)
inex=b.index(d)
#puts inex
#puts " i am working till here"
b[inex]=0
k=Matrix.build(5,5){|i,j| b[i*5+j]}
puts k
y=check_status(b)
print "Y value before if"
puts y
print "\n"
if(y==2)
puts " i am inside y=2"
return 6
else 
return 5
end
end
def check_status(b)
$bingo=0
a=0
#print "\n $b1 value"
#puts $b1
if( b[3] ==0 and b[1] ==0 and b[2] ==0 and b[0] ==0 and b[4] ==0)
$bingo=$bingo+1
puts " \n First line gone"
end
if( b[5] ==0 and b[6] ==0  and b[7] ==0 and b[8] ==0 and b[9] ==0)
$bingo=$bingo+1
puts " second line gone"
end
if( b[10] == 0 and b[11] == 0 and b[12] == 0 and b[13] == 0 and b[14] ==0)
$bingo=$bingo+1
puts " third line gone"
end
if( b[15]==0 and b[16]==0 and b[17] ==0 and b[18]==0 and b[19]  ==0)
$bingo=$bingo+1
puts " Fourth line gone"
end
if( b[20]==0 and b[21]==0 and b[22]==0 and b[23]==0 and b[24]  ==0)
$bingo=$bingo+1
puts " Fifth line gone"
end
if( b[1]==0 and b[5]==0 and b[10]==0 and b[15]==0 and b[20]  ==0)
$bingo=$bingo+1
puts " First vertical line gone"
end
if( b[2]==0 and b[6] ==0 and b[11] ==0 and b[16] ==0 and b[21] ==0)
$bingo=$bingo+1
puts " second vertical line gone"
end
if( b[3]==0 and b[7]==0 and b[12]==0 and b[17]==0 and b[22]  ==0)
$bingo=$bingo+1
puts " third vertical line gone"
end
if( b[4]==0 and b[8] ==0 and b[13] ==0 and b[18] ==0 and b[23]  ==0)
$bingo=$bingo+1
puts " fourth vertical line gone"
end
if( b[5]==0 and b[9]==0 and b[14]==0 and b[19] ==0 and b[20]==0)
$bingo=$bingo+1
puts " fifth vertical line gone"
end
if( b[0] ==0 and b[6] ==0 and b[12]==0 and b[18]==0 and b[24]  ==0)
$bingo=$bingo+1
puts " First diagonal line"
end
if( b[4] ==0 and b[8] ==0 and b[12]==0 and b[16]==0 and b[20]  ==0)
$bingo=$bingo+1
puts " second diagonal line"
end

puts " Bingo value is this"
puts $bingo
if($bingo==5)
return 2
puts " i am donesss"
else
puts " 5 is return"
return 5
end
end

require 'matrix'
#$bingo=0
#$b1,$b2,$b3,$b4,$b5,$b6,$b7,$b8,$b9,$b10,$b11,$b12=0
a=(1...26)
a=a.to_a
b=a.shuffle
c=b
#print b
j= Matrix.build(5,5){|i,j| b[i*5+j]}
#puts j
k=1
until k==2 do 
puts "Enter Number to cut"
d=gets.chomp
d=d.to_i
#puts d
e=matrix_zero(b,d)
if (e==6)
k=2
end
end

puts " i am done"