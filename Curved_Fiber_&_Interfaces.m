%% Rajni Chahal (rajni.chahal@mavs.uta.edu), PhD Student, UT Arlington 
% Dr Ashfaq Adnan, Dr Ajit Roy
%% March 3, 2017
% Please contact for any help in code

% Developing Filled Fiber & their Interfaces
n=50; % number of fibers
clf
L=400; % x-dimension of RVE
M=300; % y-dimension of RVE
axis([0 L 0 M]);
ax=gca;
% axis equal
hold on 
r1=2; %radius of CNTs
d1=2*r1; 
r2=4; %radius of CNTs+Interface
d2=2*r2; 
axis([0 L 0 M]);
ax=gca;
th=[];
XX=[]; YY=[];
for i=1:n
x1=rand*L; 
y1=rand*M;
rc=50;
np=2+rand*4;
RR=[];
for t=1:np
[R]=circles(x1,y1,rc);
[RR]=[RR R];
figure(1); % identities in figure(1) will have radius = fiber + interfaces radius
fnplt(cscvn([RR]),'k',d2);
    axis off
    set(gca,'units','pixels','position',[0 0 L M]);
    hold on
    
%generating fiber portion to be removed from interface figure
figure(2); % identities in figure(2) will have radius = fiber radius
fnplt(cscvn([RR]),'k',d1);
axis off
set(gca,'units','pixels','position',[0 0 L M]);
hold on
end
RR;
end

%% subtract figure(2)from figure(1) to generate interfaces
