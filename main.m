clc;
clear all;
close all;
% MATLAB Code to Read a Grayscale Image and Convert it to an Array


%read input images 
GSM = imread('3.jpg');
C1 = imread('Cover1.tif');
C2 = imread('Cover2.tif');
C3 = imread('Cover3.tif');
if size(GSM, 3) == 3
    GSM = rgb2gray(GSM); % Convert to grayscale if the image is RGB
end
if size(C1, 3) == 3
    C1 = rgb2gray(C1); % Convert to grayscale if the image is RGB
end
if size(C2, 3) == 3
    C2 = rgb2gray(C2); % Convert to grayscale if the image is RGB
end
if size(C3, 3) == 3
    C3 = rgb2gray(C3); % Convert to grayscale if the image is RGB
end


[M,N] = size(GSM);
GSM = double(GSM);
C1=double(C1);
C2=double(C2);
C3=double(C3);
S1 = size(GSM);
S2 = size(GSM);
S3 = size(GSM);
RGSM1= size(GSM); %#ok<NASGU>
RGSM2= size(GSM);



% Preprocessing 
th=9;
% Start timer
    tic;
[SEImg, Err] = Hashing(GSM,th);
[IndSEImg] = indexing(SEImg,th);
[SEIndex, IndErr] = Hashing(IndSEImg, th);

%Encryption

[S1,S2,S3] = encrypt(SEIndex, IndErr, Err, C1, C2, C3);
    exeEncryption = toc; % Stop timer and calculate execution time

 %Decryption
% Start timer
    tic;
 [RGSM1, RGSM2] = decrypt(S1,S2,S3);
 % Stop timer and calculate execution time
    exeDecryption = toc;

   
S1=uint8(S1);
S2=uint8(S2);
S3=uint8(S3);
GSM = uint8(GSM);
RGSM1 = uint8(RGSM1);
RGSM2= uint8(RGSM2);

SEImg = uint8(SEImg);
IndSEImg = uint8(IndSEImg);
SEIndex = uint8(SEIndex);

imwrite(GSM,'GSM.bmp');
imwrite(SEImg, "SEImg.png");
imwrite(IndSEImg, "IndSEImg.png");
imwrite(SEIndex,"SEIndex.png");

imwrite(S1,'Share1.bmp');
imwrite(S2,'Share2.bmp');
imwrite(S3,'Share3.bmp');


imwrite(RGSM1,'RGSM1.bmp');
imwrite(RGSM2,'RGSM2.bmp');


figure;imshow(GSM);title('GSM');

figure;imshow(S1);title('Share1');
figure;imshow(S2);title('Share2');
figure;imshow(S3);title('Share3');

figure;imshow(RGSM1);title('RGSM1');
figure;imshow(RGSM2);title('RGSM2');


findPerformance(GSM, RGSM1,exeEncryption,exeDecryption );
findPerformance(GSM, RGSM2,exeEncryption,exeDecryption );

findPerformance(GSM, S1,exeEncryption,exeDecryption );
findPerformance(GSM, S2,exeEncryption,exeDecryption );
findPerformance(GSM, S3,exeEncryption,exeDecryption );


findPerformance(SEImg, RGSM1,exeEncryption,exeDecryption );


 