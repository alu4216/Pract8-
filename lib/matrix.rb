
require "~/LPP/Pract8/lib/fraccion.rb"

class Matrix 
	
attr_reader :col, :fil

	def initialize (*arg)
	    raise IndexError unless ((arg[0]>0) && (arg[1]>0))
	    @fil=arg[0]
	    @col=arg[1]
	    
	   if(arg.size==3)	 
	  @obj=Array.new(@fil, Array.new(@col,arg[2])) #matriz con el mismo numero en todas sus posiciones.
	  end		
	end

      def [](i)
         @obj[i]
      end

      def []=(i,j,value)
	@obj[i][j]=value
      end

      def ==(o)

            for i in (0...@fil)
                for j in (0...@col)
                        if (self[i][j] != o[i][j])
                                return false
                        end
                 end
            end
        end
	def +(o)
	raise TypeError unless ((@fil==o.fil) && (@col==o.col))
	 
	operacion= Matrix.new(@fil,@col,0)
	 for i in (0...@fil)
	     for j in(0...@col)
	  	operacion[i][j]=self[i][j]+o[i][j]
	     end
	 end
	return operacion
	end	 
 
       def * (o) 
	raise TypeError unless (@fil==o.col)
	
	operacion= Matrix.new(@fil,@col,0)
	for i in (0...@fil)
             for j in(0...@col)
		suma=self[i][0]*o[0][j]
		for k in (1...@col)
		    suma+=self[i][k]*o[k][j]
		end
		operacion[i][j]=suma
	    end
	end	
	operacion	
      end
end
