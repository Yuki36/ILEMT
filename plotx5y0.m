%% Plot Process-Translation Error
function plotx5y0(transResult, rotResult, transResultLow, rotResultLow)

% High Carrier versus Low Carrier Translation Error on(5,0)
subplot(1,2,1)

% X includes the whole 12 metals translation error
x = transResult;
y = x;
loglog(x, y);
axis equal;
S = 100;
hold on 

% Plot each high/low comparison scatter plot

scatter(transResult(1), transResultLow(1), S, 'red', 'filled')

hold on 
scatter(transResult(2), transResultLow(2), S, 'green', 'filled')

hold on 
scatter(transResult(3), transResultLow(3), S, 'magenta', 'filled')

hold on 
scatter(transResult(4), transResultLow(4), S, 'b', 'filled')

hold on
scatter(transResult(5), transResultLow(5), S, 'black', 'filled')

hold on 
scatter(transResult(6), transResultLow(6), S, 'cyan', 'filled')

hold on 
scatter(transResult(7), transResultLow(7), S, 'r*')

hold on 
scatter(transResult(8), transResultLow(8), S, 'g*')

hold on 
scatter(transResult(9), transResultLow(9), S, 'm*')

hold on 
scatter(transResult(10), transResultLow(10), S, 'b*')

hold on
scatter(transResult(11), transResultLow(11), S, 'black*')

hold on 
scatter(transResult(12), transResultLow(12), S, 'cyan*')
daspect([1 1 1])
hold on 

xlabel("High Carrier Effects (log scale)")
ylabel("Low Carrier Effects (log scale)")
title("12 Metals High Carrier versus Low Carrier Translation Error Comparison on (5,0)")
legend('Ideal Result', 'Hollow LC Steel', 'Hollow 416 SS', 'Hollow 304 SS', 'Hollow 6061 Al', 'Hollow Ti Gr 5', 'Hollow Copper', ...
    'Solid LC Steel', 'Solid 416 SS', 'Solid 304 SS', 'Solid 6061 Al', 'Solid Ti Gr 5', 'Solid Copper')

%% High Carrier versus Low Carrier Rotation Error on(5,0)
subplot(1,2,2)

% X includes the whole 12 metals rotation error
x1 = rotResult;
y1 = x1;
loglog(x1, y1);
axis equal;
hold on 

scatter(rotResult(1), rotResultLow(1), S, 'red', 'filled')

hold on 
scatter(rotResult(2), rotResultLow(2), S, 'green', 'filled')

hold on 
scatter(rotResult(3), rotResultLow(3), S, 'magenta', 'filled')

hold on 
scatter(rotResult(4), rotResultLow(4), S, 'b', 'filled')

hold on
scatter(rotResult(5), rotResultLow(5), S, 'black', 'filled')

hold on 
scatter(rotResult(6), rotResultLow(6), S, 'cyan', 'filled')

hold on 
scatter(rotResult(7), rotResultLow(7), S, 'r*')

hold on 
scatter(rotResult(8), rotResultLow(8), S, 'g*')

hold on 
scatter(rotResult(9), rotResultLow(9), S, 'm*')

hold on 
scatter(rotResult(10), rotResultLow(10), S, 'b*')

hold on
scatter(rotResult(11), rotResultLow(11), S, 'black*')

hold on 
scatter(rotResult(12), rotResultLow(12), S, 'cyan*')
daspect([1 1 1])
hold on 

xlabel("High Carrier Effects (log scale)")
ylabel("Low Carrier Effects (log scale)")
title("12 Metals High Carrier versus Low Carrier Rotation Error Comparison on (5,0)")
legend('Ideal Result', 'Hollow LC Steel', 'Hollow 416 SS', 'Hollow 304 SS', 'Hollow 6061 Al', 'Hollow Ti Gr 5', 'Hollow Copper', ...
    'Solid LC Steel', 'Solid 416 SS', 'Solid 304 SS', 'Solid 6061 Al', 'Solid Ti Gr 5', 'Solid Copper')
end 