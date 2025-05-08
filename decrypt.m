function [RGSM1, RGSM2] = decrypt(S1,S2,S3)
    th=9;
  [I,J] = size(S1);
 RGSM1 = zeros(size(S1));
 RGSM2 = zeros(size(S1));

 for rows = 1:I
  for cols = 1:J
    x = mod(S1(rows,cols),10);
   y = mod(S2(rows,cols),10);
    z = mod(S3(rows,cols),10);
if(x>0)
    m = th-x;
else 
    m=0;
end


 RGSM1(rows,cols) = ((m*10)+x+y)*th;
 RGSM2(rows,cols) =  RGSM1(rows,cols) + z;

  end
end


end

