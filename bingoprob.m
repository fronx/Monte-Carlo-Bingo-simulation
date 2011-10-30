function [avg,stddev,numturns]=bingoprob(numcards,numruns,sidelength,...
    delta,freespace)

if nargin<5
    if nargin<4
        if nargin<3
            if nargin<2
                numruns=1000;
                if nargin<1
                    numcards=1;
                end
            end
            sidelength=5;
        end
        delta=3*sidelength;
    end
    freespace=mod(sidelength,2);
end                  

for i=1:numruns
    numturns(i)=playbingo(numcards,sidelength,delta,freespace);
end

avg=mean(numturns);
stddev=std(numturns);                                                                                                                 