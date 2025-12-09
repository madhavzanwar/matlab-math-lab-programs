syms x;
f = input('Enter the value of f');
a = input('Enter the value of a');
L = limit(f, x , a)

disp(['The limit of f as x approaches a is: ', char(L)]);

% Display the result in a formatted output
fprintf('The limit of f as x approaches %g is: %s\n', a, char(L));