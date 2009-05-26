function [ result ] = GurvitzCheck( polynomKoeffs )
%
%
%%%%%%%%%%%%%%%%%%%%%

    matr = CreateGurvitzMatrix(polynomKoeffs);
    matrSize = size(matr, 1);
    
    result = true;
    
    for detSize = 1 : matrSize
       
        detValue = det(matr(1 : detSize, 1 : detSize));
        if (detValue <= 0)
            result = false;
        end
    end

return
end

