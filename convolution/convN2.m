function result = convN2(X, h)
    [r, c] = size(X);
    [m, n] = size(h);
    h = rot90(h, 2); % flipping the kernel 180°
    center = floor((size(h)+1)/2);
    left = center(2) - 1;
    right = n - center(2);
    top = center(1) - 1;
    bottom = m - center(1);
    %creating a padded version of the matrix
    Rep = zeros(r + top + bottom, c + left + right);
    for x = 1 + top : r + top
        for y = 1 + left : c + left
            Rep(x,y) = X(x - top, y - left);
        end
    end
    result = zeros(r , c);
    for x = 1 : r
        for y = 1 : c
            for i = 1 : m
                for j = 1 : n
                    result(x, y) = result(x, y) + (Rep(i + x - 1, j + y -1) * h(i, j));
                end
            end
        end
    end
end

