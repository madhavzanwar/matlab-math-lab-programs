%Electric circuit problems
%RL CIRCUIT AND RC CIRCUIT

choice = input('Enter 1 for RL circuit or 2 for RC circuit: ');

if choice == 1
    % ==== RL CIRCUIT ====
    fprintf('\n--- RL Circuit Inputs ---\n');
    R = input('Enter resistance R: ');
    L = input('Enter inductance L: ');
    E = input('Enter source voltage E: ');

    syms i(t0)

    % RL differential equation: di/dt + (R/L)i = E/L
    eqn = diff(i, t) + (R/L)*i == E/L;

    solution = dsolve(eqn);

    fprintf('\nThe general solution for the RL circuit is:\n');
    disp(solution);
 
elseif choice == 2%Electric circuit problems
%RL CIRCUIT AND RC CIRCUIT

choice = input('Enter 1 for RL circuit or 2 for RC circuit: ');

if choice == 1
    % ==== RL CIRCUIT ====
    fprintf('\n--- RL Circuit Inputs ---\n');
    R = input('Enter resistance R: ');
    L = input('Enter inductance L: ');
    E = input('Enter source voltage E: ');

    syms i(t)

    % RL differential equation: di/dt + (R/L)i = E/L
    eqn = diff(i, t) + (R/L)*i == E/L;

    solution = dsolve(eqn);

    fprintf('\nThe general solution for the RL circuit is:\n');
    disp(solution);
 
elseif choice == 2
    % ==== RC CIRCUIT ====
    fprintf('\n--- RC Circuit Inputs ---\n');
    R = input('Enter resistance R: ');
    C = input('Enter capacitance C: ');
    E = input('Enter source voltage E: ');

    syms v(t)

    % RC differential equation: dv/dt + (1/RC)v = E/(RC)
    eqn = diff(v, t) + (1/(R*C))*v == E/(R*C);

    solution = dsolve(eqn);

    fprintf('\nThe general solution for the RC circuit is:\n');
    disp(solution);

else
    fprintf('Invalid choice. Please enter 1 or 2.\n');
end

    % ==== RC CIRCUIT ====
    fprintf('\n--- RC Circuit Inputs ---\n');
    R = input('Enter resistance R: ');
    C = input('Enter capacitance C: ');
    E = input('Enter source voltage E: ');

    syms v(t)

    % RC differential equation: dv/dt + (1/RC)v = E/(RC)
    eqn = diff(v, t) + (1/(R*C))*v == E/(R*C);

    solution = dsolve(eqn);

    fprintf('\nThe general solution for the RC circuit is:\n');
    disp(solution);

else
    fprintf('Invalid choice. Please enter 1 or 2.\n');
end

