function delta_m = delta(Om,c,A)

        for i=1:length(Om)

            fun = @(x) A.*(x).*besselj(0,(Om(i,1)/c).*x).*(1-((x.*x)/(c.*c)));
    
            Dp= integral(fun, 0, c);

            delta_m(i,1)= (2/(besselj(1,Om(i,1)).*besselj(1,Om(i,1)))).* Dp;
        end

end