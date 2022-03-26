function signal = box(n, a, N)
    if ( n > N-a || n < 1+a )
        war = "WARNING! n must be between 1+a and N-a";
        disp(war)
    else
        signal = zeros(1, N);
        for i = n-a : n+a
            signal(i) = 1;
        end
    end
end

