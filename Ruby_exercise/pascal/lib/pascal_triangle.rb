# def fact(n)
#   (1..n).reduce(:*)
# end
# class PascalTriangle
#   def initialize(limit)
#     @limit=limit
#   end
#   def show
#     # (0..limit).map { |e| binomial(limit, e) }
#     # 1.upto(@limit-1) { |i| yield(i) }
#   end
# end
# p=PascalTriangle.new(6)
# a=Hash.new{ |hash, key| hash[key] = [] }
# p.show {|i|
#   # i.each{
#     (0..i).each{ |j|
#       puts fact(i) / ( fact(j) * fact( i-j ) )
#     }  
#   # }
#   }

def fact(n)
  (1..n).reduce(:*)
end

# binomial theorem, n choose k
def binomial(n,k)
  return 1 if n-k <= 0
  return 1 if k <= 0
  fact(n) / ( fact(k) * fact( n - k ) )
end

def triangle(nth_line)
  (0..nth_line).map { |e| binomial(nth_line, e) }
end

p triangle(5)