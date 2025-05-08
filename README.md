# SCVC-Project-code
Modular Semantic Compression-Driven Encryption

Research on Image Processing and Encryption Techniques
This repository contains the implementation and results of a research project focusing on image processing, encryption techniques, and performance evaluation. The main objective of this research is to explore modular encryption schemes, image security, and performance metrics like PSNR, SSIM, and others using MATLAB.

Project Overview
The project integrates several image processing and encryption techniques, such as:

Modular Encryption: Encrypting images using modular arithmetic.

Image Transformation: Processing and transforming images using methods such as hashing and error filtering.

Performance Metrics: Evaluation of image quality post-encryption and decryption using metrics like Peak Signal-to-Noise Ratio (PSNR), Structural Similarity Index (SSIM), Mean Squared Error (MSE), and others.

Key Objectives
Image Encryption and Decryption:

Implementing a modular encryption algorithm for securing image data.

Decrypting the image and comparing the original and processed images.

Error Filtering:

Introducing error filters like Value Discretization Filter (VDF) and Reduced Error Filter (REF) to enhance image quality.

Performance Evaluation:

Evaluating the impact of encryption and decryption on image quality using standard metrics.

Folder Structure
The project includes the following directories and files:

ImageSets: Contains raw images used for encryption and testing.

GSM.jpg: Input image for encryption.

Cover1.tif, Cover2.tif, Cover3.tif: Cover images used in encryption.

ResultImages: Contains the resulting images from encryption and decryption processes.

Share1.bmp, Share2.bmp, Share3.bmp: Encrypted image shares.

RGSM1.bmp, RGSM2.bmp: Decrypted results.

Scripts: MATLAB scripts for image processing and encryption.

Hashing.m: Implements the value discretization filter and error correction.

decrypt.m: Decryption logic for image data.

encrypt.m: Encryption logic using modular arithmetic.

findPerformance.m: Script for evaluating image quality using various metrics (PSNR, SSIM, etc.).

modular_inverse.m: Implements the modular inverse calculation using the Extended Euclidean Algorithm.

indexing.m: Indexing script for further image processing steps.

README.md: Documentation explaining the project, file structure, and how to use the scripts.

How to Run
Prerequisites
To run the code in this repository, you need MATLAB installed on your machine. Ensure you have the following MATLAB toolboxes:

Image Processing Toolbox

MATLAB built-in functions

Steps to Run the Code
Clone the Repository:

Clone the repository to your local machine using Git:

bash
Copy
git clone https://github.com/yourusername/your-repository.git
cd your-repository
Prepare Images:

Ensure that the images (GSM.jpg, Cover1.tif, Cover2.tif, etc.) are located in the ImageSets folder.

Run the Main Script:

Open MATLAB and navigate to the folder containing the scripts.

Run the main.m script to start the encryption and decryption process:

matlab
Copy
main
Check the Output:

The output images will be saved in the ResultImages folder as .bmp files (e.g., Share1.bmp, RGSM1.bmp).

The performance metrics will be printed in the MATLAB console.

Performance Evaluation
This section evaluates the quality of the encrypted and decrypted images using the following metrics:

PSNR (Peak Signal-to-Noise Ratio): Measures the quality of the reconstructed image.

SSIM (Structural Similarity Index): Measures the similarity between two images.

MSE (Mean Squared Error): Measures the error between the original and processed images.

NCC (Normalized Cross-Correlation): Measures the correlation between the original and the processed image.

MAE (Mean Absolute Error): Measures the average absolute error between the images.

The results are displayed in the MATLAB console and saved to output files.

Conclusion
This project demonstrates the application of modular encryption in securing image data. The performance evaluation shows how well the encrypted images retain quality after decryption, which can be further improved by refining the encryption algorithms or introducing more sophisticated error-correction techniques.
