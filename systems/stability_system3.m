function result = stability_system3(signal)
    [r, c] = size(signal);
    if(r>1)
        error("The signal must be a horizontal vector")
    end
    result = zeros(1,c);
    result(1) = signal(1);
    for i=2:c
        result(i) = signal(i) + 2*result(i-1);
    end 
end

