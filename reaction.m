% Michaelis-Menten equations for the reaction
% A + B \xleftrightharpoons 5B

function f = dXdT (~, x, y)

A = x(1);
B = x(2);

k1 = y(1); %1  1/sec 1/mM
km1 = y(2); %2


dadt = -k1*A*B + km1*B^5;

dbdt = k1*A*B - km1*B^5;
 
%notice that dadt + dbdt = 0

f = [dadt; dbdt];

end
