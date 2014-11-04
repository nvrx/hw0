def sum(array)
  sum = 0
  for i in 0..array.length-1
    sum += array[i]
  end
  return sum
end

def max_2_sum(array)
  if array.length == 0
    return 0
  end
  if array.length == 1
    return array[0]
  end
  if array[0] < array[1]
    max_2 = [array[0], array[1]]
  else
    max_2 = [array[1], array[0]]
  end
  for i in 2..array.length-1
    if array[i] > max_2[1]
      max_2 = [max_2[1], array[i]]
    elsif array[i] > max_2[0]
      max_2 = [array[i], max_2[1]]
    end
  end
  return max_2[0] + max_2[1]
end

def sum_to_n?(array, n)
  hash = {}
  for i in 0..array.length-1
    if hash.has_key?(n - array[i]) == true
      return true;
    end
    if !hash.has_key?(array[i])
      hash[array[i]] = true
    end
  end
  if array.length == 0 && n == 0
    return true;
  end
  return false;
end

def hello(name)
  "Hello, " + name
end

def starts_with_consonant?(s)
  if /^[[^aeiou] && [a-z]]/i.match(s)
    return true
  else
    return false
  end
end

def binary_multiple_of_4?(s)
	if s =~ /^[01]*00$/ then return true
	elsif s == "0" then return true
	end
	return false
end
=begin
def binary_multiple_of_4?(s)
    s =~ /(0|1)*00$/
end
=end

=begin
def binary_multiple_of_4?(s)
  if /^[01]*(00)$/.match(s) #|| /^0$/.match(s)
    return true
  else
    return false
  end
end
=end

class BookInStock
  def initialize(isbn, price)
    if isbn == '' || price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end

  def isbn
    return @isbn
  end

  def isbn=(value)
    @isbn = value
  end

  def price
    return @price
  end

  def price=(value)
    @price = value
  end

  def price_as_string
    return '$' + "%.2f" % @price
  end
end

# a = BookInStock.new('1234', 20)
# puts a.price_as_string
