function dy = dydtsys(t, y)
wo=1; alpha=.2; f=.52; w=.666;
% dy =[y(2);-wo*wo*sin(y(1))- alpha*y(2)];%- like fig 14.4, as expected
%[y(2);-wo*wo*sin(y(1))]; - generated ellipse, as expected
dy =[y(2);-wo*wo*sin(y(1)) - alpha*y(2) + f*cos(w*t)]; 
%- NOT Like fig 14.7
    %9.81-0.25/68.1*y(2)^2];


end

