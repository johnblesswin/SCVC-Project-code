function [S1,S2, S3] = encrypt(SEIndex, IndErr, Err, C1, C2, C3)

[I,J] = size(SEIndex);
 S1 = zeros(size(SEIndex));
 S2 = zeros(size(SEIndex));
 S3 = zeros(size(SEIndex));

for rows = 1:I
  for cols = 1:J
	S1(rows,cols) = mod(SEIndex(rows,cols),10);
    S2(rows,cols) = IndErr(rows,cols);
 S3(rows,cols) = Err(rows,cols);
  end
end
    
end

