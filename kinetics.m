[t,y] = ode45(@dXdT,linspace(0,10,100),[1 0 1], [1 5 1 1]);

plot(t,y(:,1), "b-", 15);
hold on 
plot(t,y(:,2), "r-", 15);
hold on
plot(t,y(:,3), "g-", 15);

ylim([0 1]);

legend("[S] Substrate","[P] Product","[E] Enzyme");
title("Enzyme Kinetics");
xlabel("Time");
ylabel("Concentrations");

