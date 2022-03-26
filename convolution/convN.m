function result = convN(x, h, zeroh, pad_tp)
    N = length(x);
    M = length(h);
    if(zeroh<1 || zeroh>M)
        m="zeroh is not valid";
        disp(m);
    else
        %Padding
        x = pad(x,M,pad_tp);
        lout = N+M-1;
        %flipping the filter:
        f_h=zeros(1,M);
        for i = 1:M
            f_h(i)=h(M-i+1);
        end
        result=zeros(1,lout);
        for i = 0:lout-1
            out = 0;
            for k = 1:M
                out = out + x(i+k)*f_h(k);
            end
            result(i+1)=out;
        end
        start = zeroh;
        result = result(1, start:start+N-1);
    end
end





