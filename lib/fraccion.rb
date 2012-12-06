class Fraccion
attr_accessor :num, :denom
include Comparable 
  
   def gcd(x,y)
	y==0? x:  gcd(y,x%y) 
   end
   def lcm(x,y)
    z=x/gcd(x,y) *y
  end
  
  def initialize(n,d)
    raise TypeError, "El denominador no puede ser 0" if d.eql?0
    m=gcd(n,d)
    @num=n/m
    @denom=d/m
  end
  
  def to_float
    @num.to_f/@denom.to_f
  end
  
  def to_s    
    "#{@num}/#{@denom}"
  end
 
  def <=> (other)
     m=lcm(@denom,other.denom)
     x=m/@denom
     y=m/other.denom
     (@num*x)<=>(other.num*y)
  end 
  
  def abs
   x=(@num.to_f/@denom.to_f).abs 
  end 
   
  def reciprocal
    @denom/@num
  end 
   
  def opuesto
   Fraccion.new(-@num,@denom)
  end 
   
  def +(other)
   m=lcm(@denom,other.denom)
   x=m/@denom
   y=m/other.denom
   Fraccion.new((@num*x)+(other.num*y),m)
  end
  
  def -(other)
   m=lcm(@denom,other.denom)
   x=m/@denom
   y=m/other.denom
   Fraccion.new((@num*x)-(other.num*y),m)
  end
   
  def *(other)
    Fraccion.new(@num*other.num,@denom*other.denom) 
  end
   
  def /(other)
   Fraccion.new(@num*other.denom,@denom*other.num) 
  end
   
  def <=(other)
   m=lcm(@denom,other.denom)
   x=m/@denom
   y=m/other.denom
  if ((@num*x)<=(other.num*y))
  return -1
  end 
  else 
  return 0
  end 
  
  def >=(other)
   m=lcm(@denom,other.denom)
   x=m/@denom
   y=m/other.denom
  if ((@num*x)>=(other.num*y)) 
     return 1
  end
  else   
     return 0
  end
  
  def rest(other)
  m= @num % @denom
  n= other.num % other.denom
  z=gcd(m,n)
  Fraccion.new(m/z,n/z)
  end
 
end
