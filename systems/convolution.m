function result = convolution(signal,filter)
    N = length(signal);
    M = length(filter);
    lout= N - M +1;
    if(lout<=0)
        result = [];
    else
        %flipping the filter:
        f_filter=zeros(1,M);
        for i = 1:M
            f_filter(i)=filter(M-i+1);
        end
        result=zeros(1,lout);
        for i = 0:lout-1
            out = 0;
            for k = 1:M
                out = out + signal(i+k)*f_filter(k);
            end
            result(i+1)=out;
        end
    end
end

