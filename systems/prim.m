function result = prim(signal)
    [r, c] = size(signal);
    if(r>1)
        error("The signal must be a horizontal vector")
    end
    result = zeros(1,c);
    result(1) = signal(1);
    for i=2:c
        result(i) = result(i-1) + signal(i);
    end 
end

