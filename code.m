pkg load image
getd = @(p)path(p,path); % scilab users must *not* execute this
getd('toolbox_signal/');
getd('toolbox_general/');

A = imread('img1.jpg');
B = imread('img2.jpg');


A = imresize (A, [300 300]);
B = imresize (B, [300 300]);
C=0.5*A+0.5*B;

subplot(2, 2, 1); title('image 1') ; image(imread('img1.jpg')); 
subplot(2, 2, 2); title('image 2') ; image(imread('img2.jpg')); 
subplot(2, 2, 3); title('fondu 1/2'); imshow(C);
imwrite(C,"fondu.jpg");