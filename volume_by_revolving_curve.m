% ---Find volume by revolving curve---

% Remove all previous content
clc
clear
close

% Initializing variables
syms x y 

% Input the function 
f = input('Enter the function in terms x and y: ');

% If lower limit is y = 0
f1 = subs(f,y,0);

% Finding intersection points (integration limits)
I = solve(f1,x);
a = I(1);
b = I(2);
r = double(b);

% Finding f(x)
fx = solve(f,y);

% Area = pi*f(x)^2
A = pi*fx(1)^2;

% Integrating to find volume and display it
V = int(A,x,a,b);
disp('------------------------------------------------')
disp('The volume is = ' + string(V) + ' unit^3')

% ploting f(x) and setting limits and labels
figure(1);
fplot(fx)
xlim([-3.5 3.5])
ylim([-3.5 3.5])
xlabel('X-axis')
ylabel('Y-axis')
zlabel('Z-axis')

% plotting 3-d graph for sphere whose volume
figure(2);
[X,Y,Z] = sphere; % Gives cordinates of a unit circle 
X = X*r;
Y = Y*r;
Z = Z*r;
% Surfing using obtained coordinates*r
surf(X,Y,Z)
%Setting labels
xlabel('X-axis')
ylabel('Y-axis')
zlabel('Z-axis')


