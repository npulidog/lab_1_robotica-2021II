%Se utilizan puntos de q al azar para tratar de dar ejemplo de la obtención
%de los cosenos directores y vector posición del efector final

L1=5; L2=5; L3=30; L4=5; L5=45; L6=5; L7=5; L8=10; %Dimensiones en cm
ws = [-600 1000 -1000 1000 -100 1000]/10;
q = [pi/4 -pi/4 0 -pi/2 pi/2 pi/2];

plot_options = {'workspace',ws,'scale',.5,'view',[-5 25], 'tilesize',2,  'ortho', 'lightpos',[2 2 10], 'noa', 'trail', '*'};
 
L(1) = Link('revolute'   ,'alpha',    0,    'a',  0,   'd',    L1,      'offset',     0,    'qlim',  [-47*pi/120 47*pi/120],   'modified');
L(2) = Link('revolute'   ,'alpha',    -pi/2,'a',  0,   'd',    L2,      'offset',     0,    'qlim',  [-47*pi/120 47*pi/120],   'modified');
L(3) = Link('revolute'   ,'alpha',    0,    'a',  L3,  'd',    0,       'offset',     0,    'qlim',  [-169*pi/360 169*pi/360],   'modified');
L(4) = Link('revolute'   ,'alpha',    0,    'a',  L5,  'd',    -L4-L6 , 'offset',     0,    'qlim',  [-pi/2 pi/2],   'modified');
L(5) = Link('revolute'   ,'alpha',    pi/2, 'a',  0,   'd',    L7,      'offset',     pi/2, 'qlim',  [-pi/2 pi/2],   'modified');
L(6) = Link('revolute'   ,'alpha',    pi/2, 'a',  0,   'd',    L8,      'offset',     0,    'qlim',  [-pi/2 pi/2],   'modified');

Robot = SerialLink(L,'name','YUANDA','plotopt',plot_options); 

T_06 = Robot.fkine(q)

CosDir = T_06(1:3, 1:3)
VecDir = T_06(1:3, 4)
