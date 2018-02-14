function C = t(xi, xj)
    sigma = 1;
    z = bsxfun(@minus,xj,xi);
    a = sum(z.^2,2)/(2*(sigma^2));
    C = exp(-a);
end