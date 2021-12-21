% ---Find area under curve---

% Remove all previous content
clc
clear
close

% Initializing variables
syms x

% Input fuctions of upper and lower curve
f = input('Enter the upper curve f in x: ');
g = input('Enter the lower curve g in x: ');
disp('-------------------------------------')

% Solve for x to find intersecting point
I = solve(f-g==0,x); 

% Area = intergral(f(x)-g(x))dx
area = int(f-g,I(1),I(2)); 

% Display area value
disp('Area between f and g is: ' + string(area) + ' unit^2')

% creating points in x interval 
x1 = I(1):0.01:I(2); 
% substituting x1 points in f
fx1 = subs(f,x,x1); 
% substituting x1 points in g
gx1 = subs(g,x,x1);

% ploting f(x) and g(x) in graph
plot(x1,fx1)
hold on 
plot(x1,gx1) 

% Creating legend, title and labels
legend(' y = '+string(f),' y = '+string(g))
title('Area under curve')
txt = ['Area = ', string(area)];
text((I(1)+I(2))/2,0,txt,'HorizontalAlignment','center')
ylim([-4 4])
xlabel('x-axis')
ylabel('y-axis')