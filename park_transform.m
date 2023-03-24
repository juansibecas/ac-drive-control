function [fq, fd, f0] =  park_transform(fa, fb, fc, theta_r)
    
TP = 2/3*[cos(theta_r)  cos(theta_r - 2*pi/3)   cos(theta_r + 2*pi/3);
          sin(theta_r)  sin(theta_r - 2*pi/3)   sin(theta_r + 2*pi/3);
          1/2           1/2                     1/2];
     
qd0 = TP * [fa; 
            fb; 
            fc];

fq = qd0(1);
fd = qd0(2);
f0 = qd0(3);
end
