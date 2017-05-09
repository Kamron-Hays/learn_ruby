def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def sum(list)
  sum = 0
  list.each do |number|
    sum += number
  end
  sum
end

# Accepts an optional number of arguments.
# All arguments are placed in an array.
def multiply(num1, num2, *numbers)
  product = num1 * num2
  numbers.each do |number|
    product *= number
  end
  product
end

def power(number, exponent)
  result = 1

  while exponent > 0
    exponent -= 1
    result *= number
  end
  result
end

def factorial(number)
  result = if number <= 1 then 1 else number end
  
  while number > 1
    number -= 1
    result *= number
  end
  result
end
