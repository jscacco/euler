NUMBER = 600851475143

def find_factor number
  (2...number).each do |x|
    if number % x == 0
      return number / x if is_prime number / x
    end
  end
end

def is_prime x
  (2...x).each do |y|
    if x % y == 0
      return false
    end
  end
  true
end
  
puts find_factor NUMBER


