clc
clear
syms x
f = (70-(1.463/x)*(x-0.0394)-0.08314*215);
df = (1.463/(x^2))-(0.1152844/(x^3))-70;
x0 = 1;
n = 9;
tol = 0.001;
for k=1:n
    x1 = x0-subs(f,x0)/subs(df, x0);
    if(abs(x1-x0)<tol)
        fprintf('Solución en: %2.2f\n',x1)
    end
    x0 = x1;
end
