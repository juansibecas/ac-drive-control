function [fa, fb, fc] =  inverse_park_transform(fq, fd, f0, theta_r)

ITP = [cos(theta_r)             sin(theta_r)           1;
       cos(theta_r - 2*pi/3)    sin(theta_r - 2*pi/3)  1;
       cos(theta_r + 2*pi/3)    sin(theta_r + 2*pi/3)  1];

abc = ITP*[fq; 
           fd; 
           f0];

fa = abc(1);
fb = abc(2);
fc = abc(3);
end