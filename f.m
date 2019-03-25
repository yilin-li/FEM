%setup function
function output = f(t,i)
global h
output = (h.^2*t*(3*h.^2*(2*i.^3+i)-160*h*(6*i.^2+1)+36000*i))/60000000;
end