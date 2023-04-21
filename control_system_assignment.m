syms Kd Kp Ki
Kp=1; %P roportional gain
Ki=0; % Integral gain
Kd=0; % Derivative gain

H = tf(2, [1 4 10]); % Plant transfer function

controller = tf([Kd Kp Ki], [1 0]); % PID transfer function

Go = controller * H; % Open loop transfer function

Gc = Go / (1+Go); % Closed loop transfer function

ltiview(Gc)
%bode(Gc)

%pzmap(H)
%grid on

