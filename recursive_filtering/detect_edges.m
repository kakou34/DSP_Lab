function [mod, phase] = detect_edges(im)
    [R, C] = size(im);
    p = zeros(R+2, C+2);
    p(2:end-1, 2:end-1) = im;% 0 padding
    Gx = zeros(R+2, C+2);
    Gy = zeros(R+2, C+2);
    for i=2:R+1
        for j=2:C+1
            % Derivative along the x direction 
            Gx(i,j)=(p(i+1,j-1)+2*p(i+1,j)+p(i+1,j+1))-(p(i-1,j-1)+2*p(i-1,j)+p(i-1,j+1));
            % Derivative along the y direction
            Gy(i,j)=(p(i-1,j+1)+2*p(i,j+1)+p(i+1,j+1))-(p(i-1,j-1)+2*p(i,j-1)+p(i+1,j-1));
        end
    end
    Gx = Gx(2:end-1, 2:end-1);
    Gy = Gy(2:end-1, 2:end-1);
    mod = sqrt(Gx.^2+Gy.^2);
    phase = 180*atan2(Gx, Gy)/3.14;
end

