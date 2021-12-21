% Remove all previous content
clc
clear
close
% Initializing variables
syms x y z l real

% Input fuction and constraint
f = input('Enter the functions in the variables of x,y,z: ');
g = input('Enter the constraint in the variables x,y,z: ');

% Legrange function
F = f+l*g;
% Evaluating F'(x),F'(y),F'(z)
Fx = diff(F,x);
Fy = diff(F,y);
Fz = diff(F,z);
% Solving for l,x,y,z
[l,u,v,w,] = solve(Fx==0,Fy==0,Fz==0,g,[l,x,y,z]);

% For loops for points obtained
for i=1:numel(u)
    % Evaluating f
    distance2(i) = subs(f,[x,y,z],[u(i),v(i),w(i)]);
    % Evaluating √f (actual value)
    distance(i) = sqrt(distance2(i));
    disp('------------------------------------------')
    % If distance is min/max
    if distance(i) == min(distance)
        disp('f attains minimum at (x,y,z) =')
        disp([u(i),v(i),w(i)])
        disp('Minimun of f: ')
        disp(min(distance))
    elseif distance(i) == max(distance)
        disp('f attains maximum at (x,y,z) =')
        disp([u(i),v(i),w(i)])
        disp('Maximun of f: ')
        disp(max(distance))
    end
end