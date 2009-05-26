function [ result ] = RaussCheck( polynomKoeffs )
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%

    matr = CreateRaussMatrix(polynomKoeffs);
    mSize = size(matr, 1);
    
    
    rVt = matr(1 : mSize, 1);
    boolVt = (rVt > 0);

    if ( size(find(boolVt), 1) ~= size(boolVt, 1))
        result = false;
    else
        result = true;
    end

return
end


