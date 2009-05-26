function [ result ] = CreateRaussMatrix( polynomKoeffs )
%
%
%%%%%%%%%%%%%%%%%%%%%%

    %normValue = polynomKoeffs(1);
    %polynomKoeffs = polynomKoeffs / normValue;
    dataSize = size(polynomKoeffs, 2);
%%%%%%%%%%%%%%%    
    result = zeros(dataSize);
%%%%%%%%%%%%%%%    
    result(1, 1) = inf;
    result(2, 1) = inf;
%%%%%%%%%%%%%%%
    koeffSize = dataSize;
    
    oddIndexes  = 1 : 2 : koeffSize;
    evenIndexes = 2 : 2 : koeffSize;

    oddKoeffs  = polynomKoeffs(oddIndexes);
    evenKoeffs = polynomKoeffs(evenIndexes);

    oddSize  = size(oddKoeffs , 2);
    evenSize = size(evenKoeffs, 2);
%%%%%%%%%%%%%%    
   colIndex = 2;

   result(2, colIndex : colIndex + evenSize - 1) = evenKoeffs;
   result(1, colIndex : colIndex + oddSize  - 1) = oddKoeffs;
%%%%%%%%%%%%%%
   
   for rowIndex = 3 : dataSize
      result(rowIndex, 1) = ...
          result(rowIndex - 2, 2) / ...
          result(rowIndex - 1, 2);
       
      for currentColIndex = 2 : dataSize - 1
         result(rowIndex, currentColIndex) = ...
             result(rowIndex - 2, currentColIndex + 1) - ...
                result(rowIndex, 1) * ...
                result(rowIndex - 1, currentColIndex + 1) ...
             ; 
      end
   end


return
end


