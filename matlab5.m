n = 0:1:199;
X = input('x(n): ');
x = X;
for k = 1:200
    
    if n(k) == 0
        
        y(k) = -1.5*x(k) + 2*x(k+1) - 0.5*x(k+2);
        
    elseif (n(k) > 0) && (n(k) <= 198)
        
        y(k) = 0.5*x(k+1) - 0.5*x(k-1);
        
    elseif n(k) == 199
        
        y(k) = 1.5*x(k) - 2*x(k-1) + 0.5*x(k-2);
        
    end
end
plot(n,x,'b')
hold on
plot(n,y,'--r')
legend('x(n)','y(n)')
xlabel('x-axis')
ylabel('y-axis')
title('x(n) and y(n) graph')
