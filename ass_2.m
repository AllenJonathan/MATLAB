% Remove all previous content
clc
clear
close

% Creating variables
syms x c

% Input function and interval
fx = input('Enter a function in x: ');
I = input('Enter the interval [a,b]: ');

% Assigning a and b as interval limits
a = I(1); 
b = I(2);

%creating points between interval and substituting in f(x)
t = a:0.01:b;
fxt = subs(fx,x,t);

%creates a graph and indicates peaks
findpeaks(double(fxt)) 

%gives values of maximum and its position
[localmax,position1] = findpeaks(double(fxt)); 

%display values
disp('-------------------------------')
disp('Local maximamum occurs at x = ')
disp(t(position1))
disp('Local maxinmum is = ')
disp(localmax)

%local maxima cordinates
x1 = t(position1);
y1 = localmax;

%creating negative to find local minimum 
gxt = -fxt;

%same procedure
findpeaks(double(gxt))
[localmax,position2] = findpeaks(double(gxt));

disp('-------------------------------')
disp('Local minimum occurs at x = ')
disp(t(position2))
disp('Local minimum is = ')
localmin = -localmax;
disp(localmin)
disp('--------------------------------')
%local minima coordinates
x2 = t(position2);
y2 = localmin;

%plot local min & max
fplot(fx,I,'LineWidth',2)
hold on
plot(x1,y1,'o','MarkerFaceColor','r')
hold on
plot(x2,y2,'o','MarkerFaceColor','r')
hold off
legend('Function(x)', 'Local max/min')