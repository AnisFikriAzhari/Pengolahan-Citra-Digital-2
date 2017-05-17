clc; % Menghapus Command Window.
close all; % Mengeluarkan semua window
imtool close all; % Mengeluarkan semua figure.
clear; % Menghpus semua variabel.
workspace; % Make sure the workspace panel is showing.
fontSize = 20;

rgbImage = imread('badminton.jpg'); % Membaca file gambar dari hardisk
[rows columns numberOfColorBands] = size(rgbImage); %Mengatur Ukuran Gambar
subplot(2, 2, 1); % Membuat Plot 1
imshow(rgbImage, []); % Menanmpilkan gambar asli dari hardisk
title('Original Color Image', 'Fontsize', fontSize); % Membuat Judul dari Plot 1
set(gcf, 'Position', get(0,'Screensize')); % Memaksimalkan ukuran figure.

redPlane = rgbImage(:, :, 1);   % inisialisasi warna merah
greenPlane = rgbImage(:, :, 2); % inisialisasi warna hijau
bluePlane = rgbImage(:, :, 3);  % inisialisasi warna biru

[pixelCountR grayLevelsR] = imhist(redPlane); % Menampilkan histogram warna merah
subplot(2, 2, 2); % Membuat plot untuk histogram merah
plot(pixelCountR, 'r'); % perintah plot dengan garis warna merah
title('Histogram of red plane', 'Fontsize', fontSize); % Mengatur judul plot histogram merah
xlim([0 grayLevelsR(end)]); % Mengatur skala plot

[pixelCountG grayLevelsG] = imhist(greenPlane); % Menampilkan histogram warna hijau
subplot(2, 2, 3); % Membuat plot untuk histogram hijau
plot(pixelCountG, 'g'); % perintah plot dengan garis warna hijau
title('Histogram of green plane', 'Fontsize', fontSize); % Mengatur judul plot histogram hijau
xlim([0 grayLevelsG(end)]); % Mengatur skala plot

[pixelCountB grayLevelsB] = imhist(bluePlane); % Menampilkan histogram warna biru
subplot(2, 2, 4); % Membuat plot untuk histogram biru
plot(pixelCountB, 'b'); % perintah plot dengan garis warna biru
title('Histogram of blue plane', 'Fontsize', fontSize); % Mengatur judul plot histogram biru
xlim([0 grayLevelsB(end)]); % Mengatur skala plot