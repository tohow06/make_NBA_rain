clear all
close all

hold on
% from 0.95 to 1 loss of 5% to 0%
for i=1:-0.01:0.95
    eq=@(x,y) 1./(1./(100./x+1)+1./(y./100+1)) - i;
    fimplicit(eq,[0 300 0 300])
    xlabel('x')
    ylabel('y')
end
hold off
