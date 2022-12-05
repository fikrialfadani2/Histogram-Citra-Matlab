clc, clear all;

%Histogram Matrik
%Fikri Alfadani (NIM 20552021026)

mat_arr = [62,58,60,65,60,59,65,62;
           66,67,65,65,63,58,64,64;
           67,59,68,66,67,58,64,64;
           68,65,60,68,59,65,64,62;
           61,68,61,64,67,62,68,64;
           60,60,66,68,67,62,62,66;
           66,58,66,67,65,63,61,61;
           66,67,58,65,58,60,58,64];

width = size(mat_arr,1);
height = size(mat_arr,2);

[uv,~,idx] = unique(mat_arr);

n = accumarray(idx(:),1);

nilai(:,1) = uv;
nilai(:,2) = n;

hist = n /(width*height);

X = categorical(uv);
figure, bar(X, hist), hold on;
xlabel('Intensitas Pixel');
ylabel('Nilai Histogram');