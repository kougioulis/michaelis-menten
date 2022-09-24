%Michaelis-Menten equations, reduced to 3 instead of 4.

function f = dXdT (~, x, y)

S = x(1);
P = x(2);
E = x(3);

k1 = y(1); %1  1/sec 1/mM
km1 = y(2); %1
k2 = y(3); %1

%k3 = y(4)

%[ES] = E_0 - E
E0 = y(4); %1 
%E0 = y(5);

dsdt = -k1*E*S + km1 * (E0 - E);
dpdt = k2*(E0 - E);
dedt = -k1*E*S + km1*(E0 - E) + k2*(E0 - E);
 
f = [dsdt; dpdt; dedt];

%assuming reversability of E + P to ES complex

%dsdt = -k1*E*S + km1*(E0 - E);
%dpdt = k2*(E0 - E) - k3*(E*P);
%dedt = (km1 +k2)*(E0 - E) - km1*E*S - k3*E*P;

%f = [dsdt; dpdt; dedt];

end
