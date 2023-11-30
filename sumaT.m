function suma = sumaT(p,Om, delta, t)
    
    suma1 = 0;

    for m=1:length(Om)
        
        suma1 = suma1+ delta(m,1)*besselj(0,Om(m,1).*p).*cos(10.*Om(m,1).*t);
        
    end
        
        suma = suma1;
end