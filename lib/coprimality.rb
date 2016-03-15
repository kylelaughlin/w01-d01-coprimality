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
    #factors_array
    factors_prime = Array.new
    factors_array.each do |x|
      if x > 2
        i = 2
        prime = 0
        while i <= Math.sqrt(x) do
          if x % i == 0
            prime += 1
          end
        end
        if prime == 0
          factors_prime << x
        end
      end
    end
    factors_prime
  end
  binding.pry
#end
