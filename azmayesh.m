clc

input =readtable('inputdata.xlsx');
output =readtable('outputdata.xlsx');

iintrain = transpose(table2array(input));
oouttrain =transpose(table2array(output));

intrain=iintrain(:,1:40);
outtrain=oouttrain(:,1:40);

% intrain=a;
% outtrain=b;

intest=transpose([40 0.3 302 0.6
    40 0.3 302 0.4]);

% nett = newff(intrain,outtrain,2);
%      nett = train(nett,intrain,outtrain);
%      outputs = nett(intest)
%      
     
     
     spread = 500;

net=newrbe(intrain,outtrain,spread);

outapp=sim(net,intest)