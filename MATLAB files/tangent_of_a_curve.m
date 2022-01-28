% Remove all previous content
clc
clear
close

% Creating variables
syms x

% Prompt to enter 2 function
fx = input('Enter a function f using symbol x: '); % sin(2*x)
gx = input ('Enter a funcion g using symbol x: '); % -sin(x/2)
disp('----------------------------------------')

% Slope of functions 
di_fx = diff(fx,x);
di_gx = diff(gx,x);

% Slope at origin (x=0)
di_fx_0 = subs(di_fx,x,0);
di_gx_0 = subs(di_gx,x,0);

% Tangent at origin: y = mx
tangent_f = di_fx_0 * x;
tangent_g = di_gx_0 * x;

% Display Tangent equations
disp('Equation of tangent of ' + string(fx) + ' = ' + string(tangent_f))
disp('Equation of tangent of ' + string(gx) + ' = ' + string(tangent_g))
disp('----------------------------------------')

% Plotting functions
fplot(fx,'LineWidth', 1.5,'Color','r')
hold on 
fplot(gx,'LineWidth', 1.5,'Color','b')
hold on 

% Plotting tangents
fplot(tangent_f, '--','LineWidth', 1.5, 'Color','k')
hold on
fplot(tangent_g,'--','LineWidth', 1.5,'Color','k')
hold on

% Plotting intersection point
plot(0,0,'.','MarkerSize',15, 'MarkerEdgeColor','k')
hold off

% Creating legend, title and labels
legend(string(fx), string(gx), 'Tangents')
title('Plotting Tangents')
ylim([-3 3])
xlim([-3 3])
xlabel('x-axis')
ylabel('y-axis')





