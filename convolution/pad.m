function result = pad(signal,h_length, type)
    switch type
        case 'zero' % pad with zeros
            pad = zeros(1,h_length-1);
            result = [pad signal pad];
        case 'border' %repeat border elements
            padl = zeros(1,h_length-1)+signal(1,1);
            padr = zeros(1,h_length-1)+signal(1,end);
            result = [padl signal padr];
        case 'sym' %mirror the signal samples
            padr = flip(signal(1, length(signal)-(h_length-1)+1:end));
            padl = flip(signal(1, 1:h_length-1));
            result = [padl signal padr];
        case 'per' %repeat the signal
            padl = signal(1, length(signal)-(h_length-1)+1:end);
            padr = signal(1, 1:h_length-1);
            result = [padl signal padr];
        case 'borsym'
            padl = flip(signal(1, 2:h_length))*(-1) +2*signal(1,1) ;
            padr = flip(signal(1, length(signal)-(h_length-1):end-1))*(-1) + 2*signal(1,end);
            result = [padl signal padr];
        otherwise
            warning('Unexpected padding type.')
    end
end

