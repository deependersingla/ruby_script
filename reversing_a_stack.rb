def insert_at_bottom(stack,data)
  if(stack.empty?)
    stack.push(data)
    return stack
  end
  temp = stack.pop()
  insert_at_bottom(stack,data)
  stack.push(temp)
end

def rev_stack(stack)
  if(stack.empty?)
    return
  end
  temp = stack.pop() 
  rev_stack(stack)
  insert_at_bottom(stack,temp)
end

puts "enter elements after comma"
a = gets.chomp.split(",").map{ |x| x.to_i}
d = rev_stack(a)
print d