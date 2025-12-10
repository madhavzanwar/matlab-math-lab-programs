syms x y;
% Ask user for M(x, y) and N(x, y)
disp('Enter M(x, y) (in terms of x and y):');

M_input = input('M(x, y) = ', 's');  % Read M as a string
disp('Enter N(x, y) (in terms of x and y):');

N_input = input('N(x, y) = ', 's');  % Read N as a string
M = str2sym(M_input);
N = str2sym(N_input);
% Compute the partial derivatives
dMdy = diff(M, y);  % Partial derivative of M with respect to y
dNdx = diff(N, x);  % Partial derivative of N with respect to x
if simplify(dMdy - dNdx) == 0
    disp('The equation is exact.');
    disp('The solution for you differential equation is:');
    F1 = int(M, x);
    Fy_diff = diff(F1, y);
    F = F1 + int(N - Fy_diff, y);
 
    fprintf('\nImplicit solution F(x,y) = C is:\n');
    disp(F + sym('C'));
else
    disp('The equation is not exact.');
end
