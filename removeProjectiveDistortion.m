figure;
[file, path] = uigetfile
imshow(strcat(path, file));
grid on
grid minor


[a, b] = getpts;
rect = getrect;
close;


c = [rect(1), rect(1), rect(1)+rect(3), rect(1)+rect(3)]';
d = [rect(2), rect(2)+rect(4), rect(2)+rect(4), rect(2)]';
P = naive(a, b, c, d);

matrix = projective2d(P');
A = imread(strcat(path, file));

B = imwarp(A, matrix);
imwrite(B, 'rezultat.jpg');
imshow(B);