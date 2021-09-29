%
% Mondeo V6 2.5l Departmental test car  (matched to shuffle test results)
%
% Initialisation file for use with drive4.slx, a four mass driveability
% model.
%
% All rotations are referred to angles measured downstream of 
% final drive ratio (ie at wheels)
%
% running this macro puts all necessary parameters on the stack

% default is nonlinear simulation (lin = 0) :
lin = 0;

dt = 0.005;                      % Data acquisition rate (1/0.005 = 200Hz)

gr = [3.23, 2.13, 1.48, 1.11, 0.85];      % Gear ratios 
gin= [4.3, 5.1, 6.7, 9.0, 12.65]*1e-3;    % Gear individual inertias 

i = 3;          % Gear number selected
fd = 3.8;       % Final drive ratio
Gbx = gr(i)*fd; % Total ratio
fac = Gbx*Gbx;  % Factor for reference to wheels
rad = 0.2945;   % Wheel radius

init_speed  = 7;   % Initial vehicle speed (m/s);
init_angvel = init_speed / rad;


%
% INPUT TORQUE :
%
%%%%%%%%%%%%%%%%

Itime = [0.0, 2.0, 2.1, 5.0]';          % for shuffle analysis
Itorq = [-10, -10, 167, 167]';


%
% INERTIAS :
%
%%%%%%%%%%%%

Je = 0.2095;           % Engine+flywheel inertia (Kgm2)
Je = Je*fac;           % Refer down of ratio

Jt = 0.0063;           % Transmission inertia (Kgm2)
Jt = Jt*fac + gin(i);

Jw = 1.8176;           % Wheel inertia (both wheels, Kgm2)

mass = 1400;           % Vehicle weight (Kg)
Jv = mass*rad*rad;     % Vehicle inertia (Kgm2)


%
% STIFFNESS & DAMPING :
%
%%%%%%%%%%%%%%%%%%%%%%%

Kc = [-0.471, -175.9
      -0.035, -1.1025
           0,  0
       0.113,  3.5595
       0.471,  280.3  ];   %  Nm/rad Clutch stiffness

Bc = 0.5;
Bc = [-1,-Bc
      -0.5, -Bc
      0.5, Bc
      1,Bc];

kcin = Kc(:,1)/Gbx; kcout = Kc(:,2)*Gbx;  
bcin = Bc(:,1)/Gbx; bcout = Bc(:,2)*Gbx;  

Kd = 7200;  % Driveline stiffness (mainly sideshafts) Nm/rad  (nominal, data adjusted)
Bd = 5;     % Driveline damping Nms/rad

Kt = 80000;  % Tyre slip stiffness (N)
Bt = Kt*rad*rad/init_speed; % Velocity tyre effect (change in creep force generated, Nms/rad)

lash = 3;          % Lash degrees
L = lash*(pi/180);  %      rads

if lin    % implement linearised version :
   lash = 0; L = 0;
   bcin = [0,bcin(3)-bcin(2)]; bcout = [0,bcout(3)-bcout(2)];  
   Kc = [ 0,  0
      kcin(5)-kcin(4),  kcout(5)-kcout(4)  ];   %  Nm/rad Clutch stiffness
   kcin = Kc(:,1); kcout = Kc(:,2);  
end


disp('Mondeo V6 Variables initialised');
disp(['Lash = ',num2str(lash),' degrees']);
disp(['init engrevs = ',num2str(Gbx*init_angvel/(2*pi)*60),' rpm']);
if lin, disp('!!!!! USING LINEAR VERSION OF THE MODEL !!!!!'); end;

return;

