% DrivetrainParameters
% These parameters are for use with the drivetrain part of the vehicle
% model. 

%% Global parameters

eng_W0=5000;               %[rpm]      engine initial rotational speed
g=9.81;                    %[m/s^2]    gravitational constant


%% Vehicle chassis

%initial conditions
veh_V0=113*1000/3600;      %[m/s]      vehicle initial velocity


%parameters
m_veh=1428;                %[kg]       mass of vehicle
rho=1.18;                  %[kg/m^3]   air density
A=2.26;                    %[m^2]      frontal area
Cd=0.3;                    %[]         vehicle coefficient of drag


%% Wheel and tyre

%parameters
Jw=0.08474;                 %[kg/m^2]       wheel and tyre inertia
r_tyr=0.3072;               %[m]            tyre rolling radius

                            %Rolling resistance terms
Ad=0.019;                   % []            Drag Ad Term (tyre rolling resistance)
Bd=0.00004;                 % []            Drag Bd Term (tyre rolling resistance)

                            %LuGre tyre model parameters
sigma_0=10000;              %[N/m]          LuGre tyre model parameter - tyre stiffness
sigma_1=sqrt(10^5);         %[Ns/m]         LuGre tyre model parameter - tyre damping
Fc=1;                       %[N]            LuGre tyre model parameter
Fs=1.5;                     %[N]            LuGre tyre model parameter
vs=0.001;                   %[m/s]          LuGre tyre model parameter - stribeck velocity


%initial conditions
whl_W0=veh_V0/r_tyr;        %[rad/s]        wheel initial angular velocity
whl_pos0=0;                 %[rad]          wheel initial angular position
z0=0;                       %[m]            tyre bristle mean initial displacement


%% Clutch subsystem

%intial conditions
clu_W0=eng_W0;            %[rad/s]    clutch initial angular velocity

%simulation parameters
clu_engage=999;           %[s]         simulation time that clutch engagement begins (set to high value for coastdowns)
clu_posmax=183;           %[mm]        clutch pedal maximum travel

%parameters
n_max=6900;               %[rpm]       maximum engine rotational speed    
Je=0.14+0.0295;           %[kgm^2]     flywheel and engine inertia
r_clu=0.1035;             %[m]         clutch mean radius
mu_k=0.62;                %[]          coefficient of dynamic friction
b_clu=0.01;                %[Nms/rad]   clutch viscous friction
clu_Fmax=1825;            %[N]         clutch maximum normal force


clu_Fn=[0 0 0 54 213 502 958 1232 1701 1850 1853];     %[N]    clutch clamp force 
clu_pos=[0 23 45 65 87 109 125 143 168 182 201];       %[mm]   clutch pedal position - note that fully depressed clutch pedal -> 0mm travel

%% Transmission

%Initial conditions
gear_sel=2;


%Parameters

Jg=[0.00400 0.00050 0.0070 0.006691 0.01300];                               %[kg/m^2]        selected gear inertias [1 2 3 4 5]
gr=[3.417 2.136 1.448 1.028 0.805];                                         %[]              gear ratios [1 2 3 4 5]

Lgbx_1_torque=[5,10,20,30,40,50,75,100,200];                                %(Nm)            First gear friction torque breakpoints
Lgbx_1_speed=[0 500 980 1475 1968 2460 2955 3500 3942 4440 4930 5940];      %(rpm)           First gear friction speed breakpoints
Lgbx_1=[                                                                    %(Nm)            First gear friction torque
    0  1.3700  1.3700  1.6300  1.3700  1.6000  1.6800  1.8100  1.8400  1.8900  2.0400  2.3100;
    0  1.5700  1.5700  1.4700  1.5200  1.6800  1.7400  1.8700  1.8900  1.9700  2.1200  2.4500;
    0  1.8500  1.8500  1.7700  1.7800  1.8900  1.9700  2.0700  2.0800  2.1400  2.2700  2.5400;
    0  2.2500  2.2500  1.9700  1.9700  2.0200  2.1500  2.2400  2.2400  2.3200  2.4300  2.7400;
    0  2.4500  2.4500  2.1700  2.1900  2.3000  2.3700  2.4400  2.3700  2.4900  2.6500  2.7800;
    0  2.7600  2.7600  2.4800  2.4500  2.4900  2.5700  2.6300  2.5800  2.6600  2.8200  2.9300;
    0  3.7300  3.7300  3.2400  3.1200  3.1400  3.2400  3.1600  3.1500  3.2300  3.3500  3.5800;
    0  4.7000  4.7000  4.0500  4.0200  3.7300  3.7400  3.7900  3.8300  3.8900  4.1200  3.8900;
    0  5.6000  5.6000  4.9200  5.9100  5.4900  4.9600  4.7200  4.5900  4.6300  6.1000  4.5400
    ]; 
                   

Lgbx_2_torque=[5,10,20,30,40,50,75,100,150,200];                            %(Nm)            Second gear friction torque breakpoints
Lgbx_2_speed=[0,735,985,1475,1965,2460,2955,3450,3935,4430,4925,5930];      %(rpm)           Second gear friction speed breakpoints
Lgbx_2=[                                                                    %(Nm)            Second gear friction torque
    0  1.4200  1.4500  1.7100  1.5900  1.7500  2.0400  2.2300  2.4200  2.3100  2.4700  3.0100;
    0  1.4700  1.5000  1.6300  1.6400  1.7700  1.9500  2.2000  2.3100  2.3500  2.4900  2.9300;
    0  1.7200  1.8100  1.8600  1.8000  1.9200  2.1100  2.2500  2.3100  2.4400  2.5200  2.9000;
    0  1.9400  1.9900  1.9800  1.9700  2.1100  2.2100  2.3700  2.4000  2.5400  2.6200  2.8900;
    0  2.2400  2.2600  2.1700  2.1300  2.2200  2.3900  2.4900  2.5000  2.6400  2.7100  2.9600;
    0  2.4800  2.5100  2.3600  2.4100  2.4000  2.5400  2.6500  2.6100  2.7500  2.8300  3.0600;
    0  3.1800  3.2900  2.9400  2.9100  2.8700  3.0000  3.0500  2.9900  3.0600  3.1800  2.7500;
    0  4.0100  3.9600  3.6600  3.5900  3.5300  3.5200  3.5500  3.5300  3.6800  3.6100  3.2600;
    0  5.9000  5.7900  5.4300  5.2700  5.1900  5.0700  4.4400  4.8400  6.0800  4.3400  3.8400;
    0  8.0700  7.8100  7.4200  6.8000  8.1000  5.7600  5.7600  6.6000  9.2200  7.2500  6.5800
    ];
 
Lgbx_3_torque=[5,10,20,30,40,50,75,100,150,200];                            %(Nm)            Third gear friction torque breakpoints
Lgbx_3_speed = [0,490,985,1475,1965,2460,2955,3450,3950,4440,4930,5930];    %(rpm)           Third gear friction speed breakpoints
Lgbx_3=[                                                                    %(Nm)            Third gear friction torque
    0  0.4800  1.1500  1.3300  1.5900  1.6200  1.7100  1.7300  2.3100  2.4800  2.9300  3.3300;
    0  0.5700  1.1500  1.3300  1.5900  1.6200  1.7100  1.8800  2.2100  2.3200  2.6100  3.1000;
    0  0.8000  1.3000  1.4200  1.6800  1.7300  1.8400  1.9700  2.1900  2.1400  2.4400  2.9800;
    0  1.0500  1.3700  1.5600  1.7900  1.9000  1.9500  2.0500  2.2300  2.1200  2.4800  2.8800;
    0  1.3400  1.5600  1.6800  1.8200  1.9600  2.0900  2.1100  2.2900  2.2200  2.5700  2.8500;
    0  1.5800  1.7600  1.8700  2.0900  2.1100  2.1800  2.2700  2.4200  2.2900  2.7800  3.3200;
    0  2.2000  2.3200  2.2900  2.5300  2.5200  2.5400  2.6500  2.7400  2.9600  3.0200  3.6100;
    0  2.8100  2.9100  2.7400  2.9700  2.9600  2.9600  3.0000  3.0000  3.1400  3.6400  3.9300;
    0  4.4300  4.3600  4.2300  4.0400  4.0400  4.0000  3.9900  3.9400  4.1700  4.3500  4.7800;
    0  6.2900  6.0500  5.7500  5.3400  5.3300  5.4200  4.6100  5.0800  6.0400  7.2900  7.0200]; 
                   
Lgbx_4_torque=[5,10,20,30,40,50,75,100,150,200];                            %(Nm)            Fourth gear friction torque breakpoints
Lgbx_4_speed=[0,490,980,1475,1970,2460,2955,3445,3935,4430,4920,5920];      %(rpm)           Fourth gear friction speed breakpoints
Lgbx_4=[                                                                    %(Nm)            Fourth gear friction torque
    0  2.6600  3.1400  3.3300  3.3200  3.7200  3.6900  3.8600  3.9900  4.0700  4.5300  5.3600;
    0  2.6500  3.1400  3.3300  3.3200  3.6100  3.6600  3.8100  3.8800  4.1200  4.4800  5.1700;
    0  2.7200  3.2200  3.2700  3.2900  3.6300  3.7700  3.8400  3.9000  4.1100  4.4600  5.0300;
    0  2.8100  3.3000  3.3500  3.3500  3.7000  3.8100  3.8800  3.9500  4.1300  4.9900  4.9900;
    0  2.9400  3.3400  3.4600  3.4100  3.7000  3.8800  3.9400  4.0100  4.2900  4.8800  5.2200;
    0  3.1100  3.4700  3.5400  3.5300  3.7800  3.9800  3.9700  4.0400  4.2700  4.8500  5.1700;
    0  3.5800  3.9800  3.9700  3.9000  4.1400  4.2300  4.2100  4.3300  4.6000  5.0000  5.3000;
    0  4.0900  4.4600  4.3900  4.2800  4.4600  4.6200  4.5000  4.6300  4.9000  5.1800  6.0000;
    0  5.3200  5.5600  5.3800  5.2100  5.3400  5.4000  5.3900  5.5300  5.5900  5.8400  6.2600;
    0  6.7400  6.9400  6.5400  6.3600  6.4100  6.3100  6.3700  6.5700  6.7100  6.6900  6.4800
    ]; % (Nm)
                   
Lgbx_5_torque = [5,10,20,30,40,50,75,100,150,200];                          %(Nm)            Fifth gear friction torque breakpoints
Lgbx_5_speed = [0,490,980,1475,1970,2455,2955,3445,3935,4430,4920,5920]; 	%(rpm)           Fifth gear friction speed breakpoints
Lgbx_5=[                                                                    %(Nm)            Fifth gear friction torque
    0  3.1600  3.9000  4.2200  4.4800  4.5600  4.8000  5.4500  5.7400  5.6300  6.1000  6.6100;
    0  3.2700  3.9000  4.2200  4.4800  4.5600  4.8000  5.4500  5.7400  5.6300  5.8700  6.3200;
    0  3.3700  3.8900  4.1000  4.4600  4.5400  4.7600  5.1400  5.5400  5.5900  5.7800  6.0200;
    0  3.5300  3.9200  4.1100  4.4900  4.5700  4.7800  5.1500  5.4500  6.0700  5.7200  6.3800;
    0  3.2900  3.9700  4.0800  4.5200  4.7100  4.8100  5.1000  5.4800  5.9600  5.6300  6.1000;
    0  3.4700  4.0600  4.2200  4.6300  4.7500  4.9300  5.1000  5.4300  5.9400  5.6600  6.5400;
    0  3.8200  4.4300  4.5400  4.8700  4.9300  5.1300  5.2800  5.5100  6.0200  5.7800  6.3600;
    0  4.3100  4.8100  4.8100  5.1600  5.2100  5.2800  5.5700  5.7400  6.4200  6.5900  6.5200;
    0  5.3600  5.7200  5.6800  5.8800  5.8700  5.9200  6.4300  6.6200  6.7400  6.5100  7.5100;
    0  6.4800  6.7100  6.5600  6.7600  6.6100  6.6400  7.0700  7.0000  7.1700  7.0100  8.0100
    ]; % (Nm)
      
      
%% Driveshaft and final drive

%initial conditions
fd_W0=veh_V0/r_tyr;             %[rad/s]        final drive initial angular velocity
fd_pos0=0;                      %[rad]          final drive initial angular position


%parameters
Jf=0.004;                       %[kg/m^2]       final drive inertia
k_ds=1183;                      %[Nm/rad]       halfshaft mean stiffness
b_ds=2;                         %[Nms/rad]      halfshaft damping
fd=4.067;                       %[]             final drive ratio



%%  Engine

P = [0; 2.9; 5.3; 7.8; 10.6; 14.3; 18.1; 21.7; 25.5; 32.9; 43.7; 49.2; 54.6; 59.8; 80.3];

N = [350	528.5	707	1050	1375	1703	2137	2572	3214	3856	4548	5275	6002	7000];

T = [
    0 0 0 0 0 0 0 0 0 0 0 0 0 0
    75.76476336	47.94863126	29.54188 15.52953604 6.477755615 0.226991994 -2.812632122 -4.526057601 -7.062916036	-8.456213345 -10.58120179 -12.61472134 -13.68089862	-15.619182
    83.51446181	62.47836215	43.88528375	23.25174627	14.15800586	7.704037231	3.820094085	1.530412964	-1.441485928 -3.153489677 -5.379761856 -7.440443797	-8.560247497 -10.44851915
    84.22426173	78.49198046	59.89890205	32.97155083	22.62262208	15.9446956	11.13020509	8.205416694	4.754047681	2.690788749	0.352888961	-1.737729403 -2.916636263 -4.749788591
    84.99161299	94.47701244	77.21092184	50.28357062	32.84650385	24.85351545	19.03302781	15.42163694	11.45192185	9.008927588	6.550349304	4.427367239	3.184565072	1.411001197
    85.99465072	95.71827735	99.84020485	72.91285363	55.47578686	41.87371647	29.36314607	24.85426769	20.20700023	17.26763764	14.65131532	12.48602928	11.15970682	9.464033564
    87.03057492	97.00023948	105.2423623	96.28408034	78.84701358	65.24494318	50.5722319	38.72493243	29.24913037	25.79712507	23.01788679	20.80890974	19.39632862	17.78109978
    88.02813156	98.23472152	106.6977532	112.5178365	101.3526393	87.75056891	73.07785762	61.23055816	46.61913382	34.86071174	31.07458523	28.82353538	27.32789035	25.7901265
    89.06679631	99.52007508	108.2131189	114.3050259	120.4201787	111.1836243	96.51091298	84.66361352	70.05218918	58.2937671	47.74593748	38.43284621	35.58630216	34.12919554
    91.08657446	102.0195621	111.1598855	117.7803784	124.420973	130.8743438	135.2562323	130.2313227	115.6198984	103.8614763	93.31364671	84.00055544	76.10563387	66.74465552
    94.06280114	105.7026596	115.5020681	122.9014542	130.316309	137.5870906	142.8007429	145.1484205	145.2516114	150.0199247	151.327917	148.5120987	139.1328923	120.3130435
    95.54817394	107.5408169	117.6691611	125.4572765	133.2585486	140.9372828	146.5660512	149.3115634	149.6982817	154.9496547	156.6600375	153.9661645	144.1952123	124.4515792
    97.03902783	109.3857571	119.8442507	128.02253	136.211645	144.2998373	150.3452535	153.4900684	154.1613604	159.8975755	162.0118337	159.440356	149.2762125	128.6053863
    98.45588712	111.1391286	121.9113855	130.4604638	139.0181724	147.4955003	153.9368852	157.4611844	158.402926	164.5999194	167.0980077	164.6428504	154.1050306	132.5530301
    104	118	130	140	150	160	167.990794	173	175	183	187	185	173	148
    ];
