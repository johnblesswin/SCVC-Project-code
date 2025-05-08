function [SSM, Error] = Hashing(GSM, th)
    % Get the size of the input matrix
    [I, J] = size(GSM);
    
    % Initialize output matrices
    SSM = zeros(size(GSM));
    Error = zeros(size(GSM));
    
    % Loop through each pixel
    for rows = 1:I
        for cols = 1:J
            pixel = GSM(rows, cols);
            
            % VDF: Value Discretization Filter
            p = mod(pixel, 10);
            q = mod(floor(pixel / 10), 10);
            r = floor(pixel / 100);
            e1 = p + q + r;
            e2 = mod(e1, th);
            e = e2;

            % REF: Reduced Error Filter
            if (e2 > floor(th / 2))
                e2 = e2 - th;
            end
            
            % Calculate pixel for SSM
            pixel_ssm = pixel - e;
            SSM(rows, cols) = pixel_ssm;
            Error(rows, cols) = e;
        end
    end
end
