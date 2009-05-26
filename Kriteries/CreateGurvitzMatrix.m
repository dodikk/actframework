function [ result ] = CreateGurvitzMatrix(polynomKoeffs)
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

divider = polynomKoeffs(1);

polynomKoeffs = polynomKoeffs / divider;

koeffSize = size(polynomKoeffs, 2);
dataSize = size(polynomKoeffs, 2) - 1;
result = zeros(dataSize);


%polynomKoeffs1 = polynomKoeffs(2 : dataSize);
oddIndexes  = 1 : 2 : koeffSize;
evenIndexes = 2 : 2 : koeffSize;

oddKoeffs  = polynomKoeffs(oddIndexes);
evenKoeffs = polynomKoeffs(evenIndexes);

oddSize  = size(oddKoeffs , 2);
evenSize = size(evenKoeffs, 2);

colIndex = 1;
for rowIndex = 1 : 2 : dataSize
    
   result(rowIndex    , colIndex : colIndex + evenSize - 1) = evenKoeffs;
   result(rowIndex + 1, colIndex : colIndex + oddSize  - 1) = oddKoeffs;
 
   colIndex = colIndex + 1;
   
end


return
end
