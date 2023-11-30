function U_pt = U3(p, t, delta, Om)
    n = length(t);
    k=length(p);
    U_pt = zeros(n, 1);
        for j = 1:n
            U_pt(j,1 ) = sumaT(p(1,k), Om, delta, t(1,j));
        end
end