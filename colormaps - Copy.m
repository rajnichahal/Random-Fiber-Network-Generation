%% Rajni Chahal (rajni.chahal@mavs.uta.edu), PhD Student, UT Arlington 
% Dr Ashfaq Adnan, Dr Ajit Roy
%% July 3, 2016
% Please contact for any help in code

% Reading the image of which colormap is to be generated
AA = imread('binary.jpg');
fileID = fopen('color.txt','r'); % color.txt is generated using Volume_Fraction.m

% Storing the data in a preferred format in text file
sizeA=[10,10];

% Reading the data from file
A=fscanf(fileID,'%d', sizeA);

% Defining the length scale for horizontal and vertical axis
x=[0 100]; 
y=[0 100];

%Normalizing wrt maximum value of the data
R=A*256/174; % 174 is maximum value of fiber fraction in any color grid dimension
image(x,y,R');

% % Initialize a color map array of 256 colors.
M= jet(256);

% % Apply the colormap and show the colorbar
colormap(M);
fclose(fileID);
colorbar;
