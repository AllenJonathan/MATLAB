% Gradient

% Remove all previous content
clc
clear 
close all 

% Initializing variables
syms x y z 

% inputs
f = input ('Enter a scalar valued function: ');%5*x^2/4-2*y*z-9*x

% Evaluating and diplaying gradient of f
g = gradient(f,[x,y,z]);
disp('Gradient of f is = ')
disp('['+string(g(1))+']'+'i + '+'['+string(g(2))+']'+'j + '+'['+string(g(3))+']'+'k')

% Ploting 3-D graph
[X,Y,Z] = meshgrid(-1:.4:1,-1:.4:1,-1:.4:1);
G1 = subs(g(1),[x,y,z],{X,Y,Z});
G2 = subs(g(2),[x,y,z],{X,Y,Z});
G3 = subs(g(3),[x,y,z],{X,Y,Z});
quiver3(X,Y,Z,G1,G2,G3)
xlabel("x-axis")
ylabel("y-axis")
zlabel("z-axis")