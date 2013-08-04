# first we need to generate a randon number array from 1-25
def matrix_zero(b,d)
inex=b.index(d)
#puts inex
#puts " i am working till here"
b[inex]=0
k=Matrix.build(5,5){|i,j| b[i*5+j]}
print "\n"
puts "Player Matrix"
print "\n"
print k
y=check_status(b)
#print "Y value before if"
#puts y
#print "\n"
if(y==2)
#puts " i am inside y=2"
return 6
else 
return 5
end
end
def matrix_zero_1(z,value)
#print z
#puts value
inex=z.index(value)
#puts inex
#puts " i am working till finding index"
z[inex]=0
k2=Matrix.build(5,5){|i,j| z[i*5+j]}
puts " Computer Matrx"
print "\n"
print k2
y=check_status(z)
#print "Y value before if"
#puts y
#print "\n"
if(y==2)
#puts " i am inside y=2"
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

#puts " Bingo value is this"
#puts $bingo
if($bingo==5)
return 2
#puts " i am donesss"
else
#puts " 5 is return"
return 5
end
end

def random_no() 
random_value=$m.sample
$m.delete(random_value)
#puts random_value
return random_value

end

require 'matrix'
a=(1...26)
a=a.to_a
b=a.shuffle
z=a.shuffle

$m=z.dup
#print b
puts " Player Matrix"
j= Matrix.build(5,5){|i,j| b[i*5+j]}
z1=Matrix.build(5,5){|i,j| z[i*5+j]}     # computer matrix generated

print j

print"\n\n\n" 
#puts " computer Matrix"
#print z1
print "\n"
#puts j
k=1
until k==2 do 
print"\n\n"
puts "Enter Number to cut for player"
d=gets.chomp
d=d.to_i
#puts d
e=matrix_zero(b,d)
if (e==6)
k=2
puts " Player wins it"
end
$m.delete(d)
e=matrix_zero_1(z,d)
if (e==6)
k=2
puts " computer wins it"
end
value=random_no()
#puts " i am running fine till random_no"
value=value.to_i
print"\n"
puts " No enter by computer"
puts value
#print z
#puts value
e=matrix_zero_1(z,value)
if (e==6)
k=2
puts " computer wins it"
end
e=matrix_zero(b,value)
if (e==6)
k=2
puts " Player wins it"
end
end

#puts " i am done"