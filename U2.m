function U_pt = U2(p, t, delta, Om)
    n = length(t);
    U_pt = zeros(n, 1);

    for j = 1:n
        disp(['j = ' num2str(j)]);
        disp(['Size of t: ' num2str(size(p))]);
        U_pt(j,1 ) = sumaT(p, Om, delta, t(1,j));
    end
end