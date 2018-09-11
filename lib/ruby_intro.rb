# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum=0
  if !arr.empty?
    arr.each do |item|
      sum+=item
    end
  end
  sum
end

def max_2_sum arr
  # YOUR CODE HERE
  r=0
  if !arr.empty?
    if arr.length()==1
      r=arr[0]
    elsif
      arr_sort=arr.sort().reverse()  
      r=arr_sort[0]+arr_sort[1]
    end
  end
  r
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  r=false
  arr_len=arr.length()
  if arr_len>=2
    for i in 0..arr_len-1
      for j in i+1..arr_len-1
        if arr[i]+arr[j]==n
          r=true
          break
        end
      end
    end
  end
  r
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, "+name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.length()==0
    r=false
  else
    match = (s[0] =~ /[b-df-hj-np-tv-z]/i)
    if match == nil
      r = false
    else
      r=true
    end
  end
  r
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  n=s.length()
  whether_good_binary=true
  if n<2
    if s=='0'
      r=true
    else
      r=false
    end
  else
    for i in 0..n-1 # check whether it contans non 0 nor 1 characters.
      if (s[i] =~ /[01]/)==nil
        r=false
        whether_good_binary=false
        break
      end
    end
    if whether_good_binary # if it is a valid binary number, check whether mod4==0
      if s[-2..-1]=='00'
        r=true
      else
        r=false
      end
    end
  end
  r
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    if isbn.empty? or price<=0
      raise(ArgumentError)
    end
    @isbn=isbn
    @price=price
  end
  def isbn
    @isbn
  end
  def isbn=(isbn)
    @isbn=isbn
  end
  def price
    @price
  end
  def price=(price)
    @price=price
  end
  def price_as_string
    @price='$'+format('%.2f',@price)
  end
end
