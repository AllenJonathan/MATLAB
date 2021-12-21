% Remove all previous content
clc
clear
close

% Initializing variables
syms x y real

% Input function
f = input('Enter a function in x and y: ');

% Finding f'x and f'y
fx = diff(f,x);
fy = diff(f,y);

% Solving for f'x = 0 and f'y = 0
[u,v] = solve(fx==0,fy==0,[x,y]);

% Finding Double derivatives
fxx = diff(fx,x);
fyy = diff(fy,y);
fxy = diff(fy,x);

% rt-s^2
disc = fxx*fyy-(fxy)^2;

% plotting function
ezsurf(f,[-2,2])
hold on 

% loop for each critical points
for i=1:numel(u)
    disp('  ')
    % Evaluating r*t - s^2
    sdisc = subs(disc,[x,y],[u(i),v(i)]);
    
    %Evaluating f''(x)
    sfxx = subs(fxx,[x,y],[u(i),v(i)]);

    % If r*t-s^2 = 0
    if sdisc == 0
        disp([u(i),v(i)])
        disp('Furthur investigation is required')
        disp('---------------------------------')
    % If r*t-s^2 < 0
    elseif sdisc<0
        disp([u(i),v(i)])
        disp('is saddle point')
    % If r*t-s^2 > 0
    else
        % If r > 0   | min
        if sfxx>0
            disp('f is having minimum at ')
            disp([u(i),v(i)])
            disp(' ')
            disp('Minimum value is')
            sf = subs(f,{x,y},{u(i),v(i)});
            disp(sf)
            hold on
            plot3(u(i),v(i),sf,'.','MarkerFaceColor','#D9FFFF','MarkerSize',30)
            disp(' ')
        % If r < 0   | max
        elseif sfxx<0
            disp('f is having maximum at ')
            disp([u(i),v(i)])
            disp(' ')
            disp('Maximum value is')
            sf = subs(f,{x,y},{u(i),v(i)});
            disp(sf)
            hold on 
            plot3(u(i),v(i),sf,'.','MarkerFaceColor','#D9FFFF','MarkerSize',30)
            disp(' ')
        end
    disp('------------------------------')
    end
end
hold off
