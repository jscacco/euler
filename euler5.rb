def is_divisible number
  #Retuns true if the number is divisble by 1-20
  for i in (1..20)
    if (number % i) != 0
      return false
    end
  end
  return true
end

def find_num
  #Return the smallest number divisible by 1-20
  tempNum = 20
  while tempNum > 0
    return tempNum if is_divisible tempNum
    tempNum += 1
  end
end

puts find_num

    
  
