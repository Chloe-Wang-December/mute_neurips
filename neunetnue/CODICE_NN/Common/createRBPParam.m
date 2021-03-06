function RBPParam=createRBPParam(etaP,etaN, deltaInit, deltaMin,deltaMax)
%function RBPParam=createRBPParam(etaP,etaN, deltaInit, deltaMin,deltaMax)
%EXAMPLE: rbpParam=createRBPParam(1.1,0.9,1E-03,1E-20,50);
    RBPParam.deltaInit=1E-03;
    %deltaMin  = 1E-06;
    %deltaMin  = 1E-10;
    RBPParam.deltaMin  = 1E-20;
    RBPParam.deltaMax  = 50;
    %etaP      = 1.6;
    %etaN      = 0.6;
    RBPParam.etaP      = 1.1;
    RBPParam.etaN      = 0.9;
 
switch nargin
     case 5
        RBPParam.deltaInit = deltaInit; 
        RBPParam.deltaMin  = deltaMin;
        RBPParam.deltaMax  = deltaMax;
        RBPParam.etaP      = etaP;
        RBPParam.etaN      = etaN;
     case 4
        RBPParam.deltaInit = deltaInit; 
        RBPParam.deltaMin  = deltaMin;
        RBPParam.etaP      = etaP;
        RBPParam.etaN      = etaN;
     case 3
        RBPParam.deltaInit = deltaInit; 
        RBPParam.etaP      = etaP;
        RBPParam.etaN      = etaN;
    case 2
        RBPParam.etaP      = etaP;
        RBPParam.etaN      = etaN;    
    case 1
        RBPParam.etaP      = etaP;
      
end
end