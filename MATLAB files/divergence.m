% Divergence

% Remove all previous content
clc
clear 
close all 

% Initializing variables
syms x y z 

% inputs
f = input ('Enter a vector field: '); % [xi,yj,zk]

% Evaluating and diplaying divergence of f
g = divergence(f,[x,y,z]);
disp('Divergence of f is = ')
disp(g)

% Ploting 3-D graph
[X,Y,Z] = meshgrid(-1:.3:1,-1:.3:1,-1:.3:1);
G1 = subs(f(1),[x,y,z],{X,Y,Z});
G2 = subs(f(2),[x,y,z],{X,Y,Z});
G3 = subs(f(3),[x,y,z],{X,Y,Z});
quiver3(X,Y,Z,G1,G2,G3)
xlabel("x-axis")
ylabel("y-axis")
zlabel("z-axis")