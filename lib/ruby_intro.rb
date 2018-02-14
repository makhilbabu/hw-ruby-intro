# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  end
  
  sum = 0
  arr.each {|a| sum+=a}
  return sum
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 1
    return arr[0]
  end
  if arr.length == 0
    return 0
  end
      
  sorted_arr = arr.sort
  sum = sorted_arr[-1]+sorted_arr[-2]
  return sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length == 0
    return false
  end
  if arr.length == 1
    return false
  end
  
  for i in 0..arr.length-1
    for j in 0..arr.length-1
      if i==j
        
      else 
        if arr[i] + arr[j] == n
          return true
        end
      end
    end
  end
  
  return false;
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.length == 0
    return false
  end
  
  if s[0].downcase == 'a' or s[0].downcase == 'e' or s[0].downcase == 'i' or s[0].downcase == 'o' or s[0].downcase == 'u'
    return false
  elsif s[0].downcase > 'a' and s[0].downcase < 'z'
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.length == 0
    return false
  end
  
  for i in 0..s.length-1
    if s[i] < '0' or s[i] > '9'
      return false
    end
  end

  if s[s.length-1] == '1' or s[s.length-2] == '1'
    return false
  end
  
  return true
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn_val, price_val)
    raise ArgumentError.new("ISBN cannot be negative") if isbn_val.length == 0
    @isbn = isbn_val
    raise ArgumentError.new("Price cannot be negative") if price_val < 0
    raise ArgumentError.new("Price cannot be zero") if price_val == 0
    @price = price_val
  end
  
  def isbn
    @isbn
  end
  
  def price
    @price
  end
  
  def isbn=(value)
    @isbn = value
  end
  
  def price=(value)
    @price = value
  end
  
  def price_as_string
    return "$" + sprintf("%.2f", price)
  end
end
