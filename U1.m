function U_pt = U1(p, t, delta, Om)
    n = length(p);
    U_pt = zeros(n, 1);

    for j = 1:n
        disp(['j = ' num2str(j)]);
        disp(['Size of p: ' num2str(size(p))]);
        U_pt(j,1 ) = sumaT(p(1, j), Om, delta, t);
    end
end