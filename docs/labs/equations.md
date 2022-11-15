## engine equations

### sonic flow

'''matlab
((u(1)*u(2)*u(3))/sqrt(u(8)*u(6)))*sqrt(u(7))*((2/(u(7)+1))^((u(7)+1)/(2*(u(7)-1))))
'''

### throttle

'''matlab
(pi*D^2)/4*((1-cos(u(1))/cos(u0))+2/pi*(a/cos(u(1))*(cos(u(1))^2-a^2*cos(u0)^2)^(1/2)-cos(u(1))/cos(u0)*asin(a*cos(u0)/cos(u(1)))-a*(1-a^2)^(1/2)+asin(a)))
'''
