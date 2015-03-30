function [x,fx,iter] = goldmin(xlow,xhigh,es,f)
 %Goldman search
xl = xlow;
xu = xhigh;
d = .61803 *(xu - xl);
x1 = xl + d;
x2 = xu - d;
f1 = f(x1);
f2 = f(x2);
if (f1 < f2)
    xopt = x1;
    fx = f1;
else
    xopt = x2;
    fx = f2;
end
ea = 100;
iter = 1;
while (ea > es)
    d = .61803*d;
    if (f1 < f2)
        xl = x2;
        x2 = x1;
        x1 = xl + d;
        f2 = f1;
        f1 = f(x1);
    else
        xu = x1;
        x1 = x2;
        x2 = xu-d;
        f1 = f2;
        f2 = f(x2);
    end
    if (f1 < f2)
        xopt = x1;
        fx =f1;
    else
        xopt = x2;
        fx = f2;
    end
    if (xopt < 0 || xopt > 0)
        ea = (2-.61803) * abs((xu-xl)/xopt)*100;
    end
    iter = iter + 1;
end
x = xopt;
end
