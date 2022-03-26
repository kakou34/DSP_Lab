function signal = Dirac(n, N)
    if ( n > N || n < 1 ) 
        war = "WARNING! n must be between 1 and N";
        disp(war)        
    else   
        signal = zeros(1, N);
        signal(n) = 1;
    end 
end

