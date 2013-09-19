=begin
Sorting: Selection, Insertion, Bubble, Heap, Merge, Quick, Counting, Radix
Input:
Ask user for the algorithm

Output:
Give output with time in calculation
=end
#array= [3, 1, 2, 5, 9, 23, 33, 3323, 1221, 4448, 4, 98, 12, 132343, 56, 33456, 113234, 7993, 1818, 6, 78, 1323, 4949, 19128373]

Array=[1,4,5,3,2,0]
puts " welcome to world of algorithms "
puts "1.) selection \n 2.) insertion \n 3.) bubble \n 4.) heap \n 5.) merge \n 6.) quick\n 7.) counting\n 8.) radix\n"
puts "Enter Number of which algorithm to use"
algo_hash={"1" => "selection","2" => "insertion" , "3" => "bubble" , "4" => "heap" , "5" => "merge" , "6" => "quick" , "7" => "counting" , "8" => "radix"}
d=gets.chomp
method=algo_hash[d]
####Bubble sort
def bubble
  array=Array
  k=0
  for j in 1..array.length-1
    flag=0
    for i in 0..array.length-2
      if(array[i]>array[i+1])
        d=array[i+1]
        array[i+1]=array[i]
        array[i]=d
        flag=flag+1
      end
      k=k+1
    end 
    if(flag==0)
      break
    end
  end
  return k,array
end
######selection sort
def selection
  array=Array
  k=0
  for i in 0..array.length-1
    min=i
    for j in i+1..array.length-1
      if(array[j]<array[min])
        min=j
      end
      k=k+1
    end
    d=array[i]
    array[i]=array[min]
    array[min]=d
  end
  return k,array
end

####Insertion sort
def insertion
  array=Array
  k=0
  for i in 1..array.length-1
    for j in 0..array.length-1
      if(array[i]<array[j])
        d=array[j]
        array[j]=array[i]
        array[i]=d
      end
      k=k+1
    end
  end
  return k,array
end

####Heap
def heap
  array=Array
  print array
  array=array.sort
  print "ibbb"
end


sort_array,array=send(method)
print array
puts "\n No. of steps are "
puts sort_array

