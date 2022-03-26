function result = canny_der_causal_h(signal, alpha)
    a = exp(-alpha);
    signal = [0 0 signal]; % 0 padding
    result = zeros(1,length(signal));
    for c=3:length(signal)
        result(1,c) = signal(1, c)+a*(alpha -1)*signal(1,c-1)+2*a*result(1,c-1)-(a^2)*result(1,c-2);
    end
    result = result(1,3:end);
end

