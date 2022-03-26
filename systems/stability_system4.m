function result = stability_system4(signal)
    [r, c] = size(signal);
    if(r>1)
        error("The signal must be a horizontal vector")
    end
    result = zeros(1,c);
    result(1) = signal(1);
    for i=2:c
        result(i) = signal(i) + (result(i-1)/3);
    end 
end

