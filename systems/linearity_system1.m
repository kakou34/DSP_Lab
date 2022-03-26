function result = linearity_system1(signal)
    [r, c] = size(signal);
    if(r>1)
        error("The signal must be a horizontal vector")
    end
    result = zeros(1,c);
    result(1) = signal(1);
    for i=2:c-1
        result(i) = 3*signal(i-1) - 2*signal(i) + signal(i+1);
    end 
end

