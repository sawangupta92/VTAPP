class PascalTriangle
  def initialize(limit)
    @limit=limit
  end
  def show
    1.upto(@limit-1) { |i| yield(i) }
  end
end
p=PascalTriangle.new(6)
a=Hash.new{ |hash, key| hash[key] = [] }
p.show {|i|
  j=i 
  a[0][0]=1
  a[0][1]=1
  puts a[i][j].push(a[i-1][0]+a[i-1][0])
}