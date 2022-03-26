function result = canny_der_anticausal_h(signal, alpha)
    a = exp(-alpha);
    signal = [signal 0 0]; % 0 padding
    result = zeros(1,length(signal));
    for c= length(signal)-2:-1:1
        result(1,c) = a*(alpha+1)*signal(1,c+1)-(a^2)*signal(1,c+2)+2*a*result(1,c+1)-(a^2)*result(1,c+2);
    end
    result = result(1, 1:length(signal)-2);
end

