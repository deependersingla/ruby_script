=begin
There are N cards on the table and each has a number between 0 and N-1. Let us denote the number on the ith card by ci. You want to pick up all the cards. The ith card can be picked up only if at least ci cards have been picked up before it. (As an example, if a card has a value of 3 on it, you can’t pick that card up unless you’ve already picked up 3 cards previously) In how many ways can all the cards be picked up?

Input:
The first line contains the number of test cases T. T test cases follow. Each case contains an integer N on the first line, followed by integers ci,…,cN on the second line.

Output:
Output T lines one corresponding to each test case containing the required answer for the corresponding test case. As the answers can be very big, output them modulo 1000000007.

Sample Input:
3
3
0 0 0
3
0 0 1
3
0 3 3

Sample Output:
6
4
0

Sample Explanations:

For the first case, the cards can be picked in any order, so there are 3! = 6 ways.
For the second case, the cards can be picked in 4 ways: {1,2,3}, {2,1,3}, {1,3,2}, {2,3,1}. 
For the third case, no cards can be picked up after the first one, so there are 0 ways to pick up all cards.

Constraints:
1 <= T <= 10
1 <= N <= 50000
0 <= ci <= N
*/

=end

def find_sum(a)
#puts a
for v in a
if(v>a.index(v))
print " Zero ways"
# break the code here and print result as zero ways
exit
end
#a.each{ |v| if(v>a.index(v)) print "It has zero ways" ; }
end
end

def calculate_prob(c)
#puts c
prob=1
for z in c
d=z
#print z
#print " i am doing calculation \n"
counts=c.count(z)
#puts counts
#push(y) =find no. of d in c equal to no. of ways and push no .to y and then multiply no. to get the no. of ways
prob=prob*counts
for i in 1..counts
c[i-1]=c[i-1]+1
end
#increment all no which are equal to d
c.delete_at(0)
#puts c

end
puts prob
end

arrays=[0,1,2,3,3]
$array=arrays.sort
find_sum($array)
calculate_prob($array)

