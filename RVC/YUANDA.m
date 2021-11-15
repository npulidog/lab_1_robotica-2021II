%Definición de trayectorias para el Robot Yaunda y graficación del espacio
%de trabajo del robot

L1=5; L2=5; L3=30; L4=5; L5=45; L6=5; L7=5; L8=10; %Dimensiones en cm
ws = [-600 1000 -1000 1000 -1000 1000]/10;

plot_options = {'workspace',ws,'scale',.5,'view',[-5 25], 'tilesize',2,  'ortho', 'lightpos',[2 2 10], 'noa', 'base', 'basewidth', 10, 'trail', '*'};
 
L(1) = Link('revolute'   ,'alpha',    0,    'a',  0,   'd',    L1,      'offset',     0,    'qlim',  [-47*pi/120 47*pi/120],   'modified');
L(2) = Link('revolute'   ,'alpha',    -pi/2,'a',  0,   'd',    L2,      'offset',     0,    'qlim',  [-47*pi/120 47*pi/120],   'modified');
L(3) = Link('revolute'   ,'alpha',    0,    'a',  L3,  'd',    0,       'offset',     0,    'qlim',  [-169*pi/360 169*pi/360],   'modified');
L(4) = Link('revolute'   ,'alpha',    0,    'a',  L5,  'd',    -L4-L6 , 'offset',     0,    'qlim',  [-pi/2 pi/2],   'modified');
L(5) = Link('revolute'   ,'alpha',    pi/2, 'a',  0,   'd',    L7,      'offset',     pi/2, 'qlim',  [-pi/2 pi/2],   'modified');
L(6) = Link('revolute'   ,'alpha',    pi/2, 'a',  0,   'd',    L8,      'offset',     0,    'qlim',  [-pi/2 pi/2],   'modified');

Robot = SerialLink(L,'name','YUANDA','plotopt',plot_options) 

q1 = [-47*pi/120 0 0 -pi/2 -pi/2 0];
q2 = [-47*pi/120 0 0 -pi/2 pi/2 0];
qt = jtraj(q1, q2, 25);

q3 = [-47*pi/120 0 0 -pi/2 pi/2 0];
q4 = [-47*pi/120 0 0 -pi/2 0 0];
qt2 = jtraj(q3, q4, 25);

q5 = [-47*pi/120 0 0 -pi/2 0 0];
q6 = [-47*pi/120 0 0 pi/2 0 0];
qt3 = jtraj(q5, q6, 25);

q7 = [-47*pi/120 0 0 pi/2 0 0];
q8 = [-47*pi/120 0 0 pi/2 -pi/2 0];
qt4 = jtraj(q7, q8, 25);

q9 = [-47*pi/120 0 0 pi/2 -pi/2 0];
q10 = [-47*pi/120 0 0 pi/2 pi/2 0];
qt5 = jtraj(q9, q10, 25);

q11 = [-47*pi/120 0 0 pi/2 pi/2 0];
q12 = [-47*pi/120 0 0 pi/2 0 0];
qt6 = jtraj(q11, q12, 25);

q13 = [-47*pi/120 0 0 pi/2 0 0];
q14 = [-47*pi/120 0 0 0 0 0];
qt7 = jtraj(q13, q14, 25);

q15 = [-47*pi/120 0 0 0 0 0];
q16 = [47*pi/120 0 0 0 0 0];
qt8 = jtraj(q15, q16, 25);

q17 = [47*pi/120 0 0 0 0 0];
q18 = [0 0 0 0 0 0];
qt9 = jtraj(q17, q18, 25);

q19 = [0 0 0 0 0 0];
q20 = [0 -47*pi/120 0 0 0 0];
qt10 = jtraj(q19, q20, 25);

q21 = [0 -47*pi/120 0 0 0 0];
q22 = [0 47*pi/120 0 0 0 0];
qt11 = jtraj(q21, q22, 25);

q23 = [0 47*pi/120 0 0 0 0];
q24 = [0 47*pi/120 -169*pi/360 0 0 0];
qt12 = jtraj(q23, q24, 25);

q25 = [0 47*pi/120 -169*pi/360 0 0 0];
q26 = [0 47*pi/120 169*pi/360 0 0 0];
qt13 = jtraj(q25, q26, 25);

figure(1)
Robot.plot(q1);

for q=qt'
   Robot.plot(q');
end

for q=qt2'
   Robot.plot(q');
end
for q=qt3'
   Robot.plot(q');
end
for q=qt4'
   Robot.plot(q');
end
for q=qt5'
   Robot.plot(q');
end
for q=qt6'
   Robot.plot(q');
end
for q=qt7'
   Robot.plot(q');
end
for q=qt8'
   Robot.plot(q');
end
for q=qt9'
   Robot.plot(q');
end
for q=qt10'
   Robot.plot(q');
end
for q=qt11'
   Robot.plot(q');
end
for q=qt12'
   Robot.plot(q');
end
for q=qt13'
   Robot.plot(q');
end

