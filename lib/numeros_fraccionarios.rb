require '/home/ubuntu/workspace/lib/minimizar.rb'
class Nf
    attr_reader :x,:y

    def initialize(x,y)
        @x,@y = x, y
    end
    
    def to_s
        
        "(#{@x}/#{@y})"
    end
    
    def suma(x,y)
        x,y = minimizar(x,y)
        @x,@y=minimizar(@x,@y)
        
        #numerador,denominador = @x,@y
        if( y == @y)
            #x,y = minimizar(x,y)
        
        
            numerador = @x + x
            denominador = @y
            
           numerador,denominador = minimizar(numerador,denominador)
        else
            
                z = @y * y
            
                x = x * (z/y)
                @x = @x * (z/@y)
                x = x + @x
                numerador, denominador = x,y
                numerador,denominador = minimizar(x,z)
                
        end
        return numerador,denominador
   
   
    end

    
  
end