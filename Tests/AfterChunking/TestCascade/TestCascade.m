function TestCascade()
% load Features;
% decFeatRate = 0.95;
% nExamples = 5;
% windowSize = 20;
% PosSet = zeros(windowSize,windowSize,nExamples);
% PosSet(2:windowSize,11:windowSize,:) = ones(windowSize-1,10,nExamples);
% PosSet = cumsum(PosSet,1);
% PosSet = cumsum(PosSet,2);
%     
% NegSet = createBox(nExamples,windowSize);
% NegSet = cumsum(NegSet,1);
% NegSet = cumsum(NegSet,2);
% 
% MaxFPRate = 0.3;
% MinDRate = 0.999;
% FPTarget = 0.01;
% SCThreshDecRate = 0.8;

load Features;
decFeatRate = 0.98;
nExamples = 20;
windowSize = 20;

PosSet = round(rand(20,20,nExamples)*100) + 1;
NegSet = round(rand(20,20,nExamples)*100) + 1;

MaxFPRate = 0.3;
MinDRate = 0.999;
FPTarget = 0.01;
SCThreshDecRate = 0.1;
DecFeatRate = 0.6;

logLevel = 2;

ChunkSizeMB = 50;

FeatureValuesPath = 'C:\M.Sc\CV\matlab\Data\tempTest';

Cas = Cascade(MaxFPRate, MinDRate,  FPTarget, Features, PosSet, NegSet,SCThreshDecRate,DecFeatRate,logLevel,ChunkSizeMB,FeatureValuesPath)

save 'SC.mat' Cas;
end