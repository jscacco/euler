first = 1
second = 2
sum = 0
while second <= 4000000
  if second % 2 == 0
    sum += second
  end
  temp = second
  second += first
  first = temp
end
puts sum
  
