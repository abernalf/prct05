require '/home/ubuntu/workspace/lib/gcd.rb'
def minimizar(x,y)
    a = gcd(x,y)
    x = x/a
    y = y/a
    
    return x,y

end