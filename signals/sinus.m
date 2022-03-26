function signal = sinus(f, n, Ts, N)
    signal = zeros(1, N);
    for i= 1:Ts:N
        signal(i) = sin(2*pi* f* n* i);
    end
end

