function Om= O_m(p)
    
    fun = @(x) besselj(0,x);
    Om=FindRoots(fun, 0, length(p));
    
end