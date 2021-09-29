%
% Rover 200 Departmental test car : 
% Rover 200vi 2.0l VVT engine, 1995.
%
% Initialisation file for use with drivesimple.mdl, a single mass powertrain 
% model developed by Matt Best in September 2002.
%
% running this macro puts all necessary parameters on the stack

dt = -1;			% Data acquisition rate (-1 = floating rate, set by integrator)
g = 9.81;


%
% MODEL PARAMETERS :
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

M = 1420; 		% Vehicle mass (Kg)

gr = [3.167, 1.842, 1.308, 1.038, 0.765];		% Gear ratios 
fd = 4.2;      % Final drive ratio
rad = 0.285;   % Wheel rolling radius

Rho = 1.225;		% Air viscosity
A = 2.0;				% frontal area (square metres)
Ad=0.0185;			% Drag Ad Term (tyre rolling resistance)
Bd=0.000049;		% Drag Bd Term (tyre rolling resistance)
Cd=0.38;				% Drag Cd Term (vehicle body aerodynamics)

init_speed  = 0;       % Initial vehicle speed (kph);
initvel = init_speed/3.6;


%
% INPUTS :
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

throttle = [0  2  2.1  50
            0  0  1    1 ];
            
gear = [	0  4  4.1  8  8.1  12.0  12.1  16  16.1  50
   		    1  1  2    2  3    3     4     4   5     5  ];

beta = 0;	% road inclination in degrees
               

%
% ENGINE TORQUE :
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

torque_curve = [
   78.5398  133.5000
  104.7198  136.9000
  130.8997  138.7000
  157.0796  140.2000
  183.2596  142.9000
  209.4395  147.5000
  235.6194  153.0000
  261.7994  158.0000
  287.9793  160.1000
  314.1593  160.9000
  340.3392  161.1000
  366.5191  168.0000
  392.6991  173.1000
  418.8790  173.0000
  445.0590  171.0000
  471.2389  170.0000
  497.4188  168.9000
  523.5988  168.0000
  549.7787  167.0000
  575.9587  164.0000
  603.0811  160.4000
  628.3185  158.0000
  654.4985  156.0000
  680.6784  153.8000
  706.8583  151.3740
  733.0383  145.0000
  753.9822  145.0000
  764.4542  140.0000
  785.3982         0 
  ];

omega = torque_curve(:,1);
torq = torque_curve(:,2);



disp('Rover 200 Variables initialised');
disp(['initial vehicle speed = ',num2str(init_speed),' kph']);

