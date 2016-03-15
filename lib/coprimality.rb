# This method takes two integers, m and n, and determines whether those integers are co-prime
require 'pry'
#def determine_coprimality(m, n)
  def prime_factors (number)
    factors_array = Array.new
    i=1
    while i <= number / 2
      if number % i == 0
        factors_array << i
      end
      i += 1
    end
    factors_array
  end
  puts prime_factors(15)
  binding.pry
#end
