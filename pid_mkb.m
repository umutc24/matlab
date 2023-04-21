syms Kd Kp Ki
Kp=9; %set Proportional gain
Ki=0; %set Integral gain
Kd=0; %set Derivative gain
plant = tf(2, [1 5 4]); %set transfer function of plant
pid = tf([Kd Kp Ki], [1 0]); %calculate PID transfer function
Go = pid * plant; %calculate open loop transfer function
Gc = Go / (1+Go); %calculate closed loop transfer function
ltiview(Gc)


