require 'lib/numeros_fraccionarios'
require 'test/unit'

class Testnf < Test::Unit::TestCase
    
    def setup
        @valor = Nf.new(2,3)
        @valor2 = Nf.new(5,4)
        
    end
    
    def test_simple 
        assert_equal("(2/3)",@valor.to_s)
    end
    
  

    
end