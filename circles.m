function [R]=circles(x1,y1,rc)
% the function, must be on a folder in matlab path
% the file will be used when creating curved fibers 
a=2*pi*rand;
r=sqrt(rand);
x=(rc*r)*cos(a)+x1;
y=(rc*r)*sin(a)+y1;
R=[x;y];
end