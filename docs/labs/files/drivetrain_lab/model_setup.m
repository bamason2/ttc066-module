

%parameters

M = 400;

K = 17647;

B = 1500;


%initial conditions

zb = 0.1;

zb_dot = 0;

IC = [zb; zb_dot];


%setting up A, B, C and D matrices

A = [0, -1; K/M, -B/M];

B = [1; B/M];

C = eye(2,2);

D = zeros(2,1);