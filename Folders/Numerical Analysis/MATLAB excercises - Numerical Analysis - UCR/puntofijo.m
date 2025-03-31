function ck = puntofijo(g, c0, N)
    ck = c0;
    for i = 1 : N
        ck = g(ck);
    end
    fprintf ("La aproximacion es %1.5f \n", ck)
end