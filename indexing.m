function [INSE] = indexing(SE, th) 

[I,J] = size(SE);
 INSE = zeros(size(SE));

for rows = 1:I
  for cols = 1:J
	INSE(rows,cols) = SE(rows,cols)/th;
  end
end


end

