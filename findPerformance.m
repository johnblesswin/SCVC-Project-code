function findPerformance(imagePath1, imagePath2, EncryTime, DecryTime)
% Load images
img1 = double(imagePath1); % Reference Image
img2 = double(imagePath2); % Test Image (Output of Your Algorithm)

% Ensure the images are in the same size
if size(img1) ~= size(img2)
error('Images must be of the same dimensions.');
end


% Calculate PSNR
psnrValue = psnr(img1, img2);

% Calculate SSIM
[ssimValue, ~] = ssim(img1, img2);

% Calculate MSE
mseValue = immse(img1, img2);

% new PSNR 
MAX_I = 255;
PSNR = 10 * log10((MAX_I^2) / mseValue);


% Calculate NCC
nccValue = sum(sum((img1 - mean(mean(img1))) .* (img2 - mean(mean(img2))))) / ...
(sqrt(sum(sum((img1 - mean(mean(img1))).^2))) * sqrt(sum(sum((img2 - mean(mean(img2))).^2))));

% Calculate MAE
maeValue = mean(mean(abs(img1 - img2)));


% Display the results


fprintf('PSNR : %f dB\n', PSNR);
fprintf('ssimValue: %f\n', ssimValue);
fprintf('mseValue: %f\n', mseValue);
fprintf('nccValue: %f\n', nccValue);
fprintf('maeValue: %f\n', maeValue);
fprintf('EncryTime: %f s\n', EncryTime);
fprintf('DecryTime: %f s\n', DecryTime);



end
