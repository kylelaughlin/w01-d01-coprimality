# This method takes two integers, m and n, and determines whether those integers are co-prime
require 'pry'
def determine_coprimality(m, n)
  #method to find all prime factors
  def prime_factors (number)
    factors_array = Array.new
    i=1
    while i <= number / 2
      if number % i == 0
        factors_array << i
      end
      i += 1
    end
    #factors_array
    factors_prime = Array.new
    factors_array.each do |factor|
      if factor > 2
          prime = 0
          (2..Math.sqrt(factor)).each do |x|
              if factor % x == 0
                  prime += 1
              end
          end
      end
      if prime == 0
          factors_prime << factor
      end
    end
  factors_prime
  end

  #initial checks when 0, 1 or the same
  if m == 0 || m == 1
    return false
  end
  if n == 0 || m == 1
    return false
  end
  if m == n
    return false
  end

  #establish arrays of each number's prime factors
  array1 = prime_factors (m)
  array2 = prime_factors (n)

  #compare each factor
  i = 0
  array1.each do |m_factors|
    array2.each do |n_factors|
      if m_factors == n_factors
        i += 1
      end
    end
  end
  if i == 0
    return true
  end
  false
end
