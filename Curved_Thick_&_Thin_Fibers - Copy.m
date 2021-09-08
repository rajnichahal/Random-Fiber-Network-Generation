%% Rajni Chahal (rajni.chahal@mavs.uta.edu), PhD Student, UT Arlington 
% Dr Ashfaq Adnan, Dr Ajit Roy
%% July 3, 2016
% Please contact for any help in code

n=20; % number of fibers
clf
L=400; % x-dimension of RVE
M=300; % y-dimension of RVE
d1=4; % fiber diameter   % to generate thin fibers put d1=1
axis([0 L 0 M]);
ax=gca;
hold on 
for i=1:n
x1=rand*L; 
y1=rand*M;
rc=50;
np=2+rand*4;
RR=[];
for t=1:np
[R]=circles(x1,y1,rc);
[RR]=[RR R];
end
RR;
fnplt(cscvn([RR]),'k',d1);
axis off
hold on
set(gca,'units','pixels','position',[50 50 L M]);
end