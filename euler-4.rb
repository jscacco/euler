def numToList num
  #Takes a number and returns its list representation
  list = []
  while num > 0
    list.unshift(num % 10)
    num -= num % 10
    num /= 10
  end
  list
end

def palindrome? list
  #Takes a list and returns whether or not it is a palindrome
  if list.length < 2
    return true
  elsif list[0] == list [-1]
    return palindrome? list[1, list.length - 2]
  else
    false
  end
end

def getAllNums lower, upper
  #Take a lower and upper bound and returns the array containing 
  # the product of all combinations within the range
  list = []
  i = upper
  j = upper
  while i >= lower
    while j >= lower
      list << (i * j)
      j -= 1
    end
    j = i - 1
    i -= 1
  end
  list
end

def largestPalindrome list
  #Takes a list and returns the largest palindrome within it
  palindromes = list.select {|item| palindrome?(numToList(item))}
  biggest = palindromes[0]
  palindromes.each do |item|
    if item > biggest
      biggest = item
    end
  end
  biggest
end
 
  

def main
  puts largestPalindrome(getAllNums 100, 999)
end

main()
