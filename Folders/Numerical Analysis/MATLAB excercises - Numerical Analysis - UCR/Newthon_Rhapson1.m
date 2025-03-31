function ck = Newthon_Rhapson1(f, f_derivte, c0, n)
    ck = c0;
    for i = 1 : n
        ck = ck - (f(ck))/f_derivte(ck);
    end
    fprintf ("La aproximacion es %1.5f \n", ck)
end