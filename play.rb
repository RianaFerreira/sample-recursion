def fib_recursive(accumulator, endz)
  return accumulator if accumulator.size == endz
  
  fib_recursive(accumulator << accumulator[-1] + accumulator[-2], endz)
end

def fib_linear(endz)
  accumulator = [0,1]
  
  (endz-2).times do
    accumulator << accumulator[-1] + accumulator[-2]
  end
  
  return accumulator
end

print "recursive algorithm #{fib_recursive([0,1], 10)} \n"
print "linear algorithm #{fib_linear(10)} \n"

