matches = [230.67,749.49 ,285.83,708.2;
248.53,531.28 ,273.34,512.68;
255.8,437.17 , 267.88,428.72;
443.97,646.63 , 450.77,641.47;
659.47,539.78 , 617.06,570.51;
373.41,758.65 ,406.33,735.67;
166.58,855.98 , 245.88,797.93;
380.97,758.03 , 412.41,735.71;
361.86,713.22 , 392.86,696.62;
392.31,649.38 , 407.89,638.14]

normalizedMatches = DLT(matches)
disp(normalizedMatches)
disp(mean(normalizedMatches))


function [H] = DLT(matches)
    % (1)
    matches = matches - mean(matches)
    %find average length of points x1 y1:
    [numRows , numColumns] = size(matches)
    pointLengthSum = 0;
    for row  = 1:numRows
            X = [0,0; matches(row,1),matches(row,2)];
            pointLengthSum = pointLengthSum + pdist(X,'euclidean')
    end
    averageLengthX1Points = pointLengthSum / numRows;
    %scale to average length of sqrt 2
    targetAverageLength = sqrt(2)
    matches(:,1:2) = matches(:,1:2)*targetAverageLength*averageLengthX1Points;
  
    %(2)
    %find average length of points x2 y2:
    [numRows , numColumns] = size(matches)
    pointLengthSum = 0;
    for row  = 1:numRows
            X = [0,0; matches(row,3),matches(row,4)];
            pointLengthSum = pointLengthSum + pdist(X,'euclidean')
    end
    averageLengthX2Points = pointLengthSum / numRows;
    %scale to average length of sqrt 2
    targetAverageLength = sqrt(2)
    matches(:,3:4) = matches(:,3:4)*targetAverageLength*averageLengthX2Points;
    
   % (3) compute Ai for each two corresponding points, assemble into 2nx9 matrix:
   
   % add w for each (x,y) point: 
    wValue = 1;
    wColumn(:,1) = wValue;
    % for X1:
    points1 = matches(:,1:2) + 
   
    
    
    
    
    
    
    
    
    %temporary, delete this!!
    H = matches
end