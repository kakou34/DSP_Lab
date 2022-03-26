function result = linearity_system2(signal)
    [r, c] = size(signal);
    if(r>1)
        error("The signal must be a horizontal vector")
    end
    result = zeros(1,c);
    result(1) = signal(1);
    for i=2:c-1
        result(i) = i*signal(i);
    end 
end

