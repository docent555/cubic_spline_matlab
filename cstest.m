n = 10;
for i = 1:n
    x(i) = i;
    y(i) = x(i).^3;
end

[b, c, d] = spline(n, x, y);

u = 2.5;
s = seval_cmplx(u, n, x, y, y, b, c, d, b, c, d);
disp(u)
disp(s)