function signal = ramp(n, a, N)
    if ( n > N || n < 1 ) 
        war = "WARNING! n must be wetween 1 and N";
        disp(war)        
    else
       signal = zeros(1, N);
       for i = 0: N-n
           signal(n+i) = a * i;
       end
    end
end

