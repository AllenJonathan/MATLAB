% Curl

% Remove all previous content
clc
clear 
close all 

% Initializing variables
syms x y z 

% inputs
f = input ('Enter a vector field: '); %[x*y^2,2*y*z*x^2,-3*y^2*z]

% Evaluating and diplaying curl of f
g = curl(f,[x,y,z]);
disp('Curl of f is = ')
disp('['+string(g(1))+']'+'i + '+'['+string(g(2))+']'+'j + '+'['+string(g(3))+']'+'k')

% Ploting 3-D graph
[X,Y,Z] = meshgrid(-1:.2:1,-1:.2:1,-1:.2:1);
G1 = subs(g(1),[x,y,z],{X,Y,Z});
G2 = subs(g(2),[x,y,z],{X,Y,Z});
G3 = subs(g(3),[x,y,z],{X,Y,Z});
quiver3(X,Y,Z,G1,G2,G3)