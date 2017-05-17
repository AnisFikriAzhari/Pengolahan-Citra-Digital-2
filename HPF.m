I = imread('badminton.jpg'); % Membaca file gambar dari hardisk
J = imnoise(I,'salt & pepper',0.2); % Mengubah gambar asli menjadi noise

r = medfilt2(J(:, :, 1), [3 3]); % Filter komposisi warna merah
g = medfilt2(J(:, :, 2), [3 3]); % Filter komposisi warna hijau
b = medfilt2(J(:, :, 3), [3 3]); % Filter komposisi warna biru

K = cat(3, r, g, b); % Menggabungkan hasil dari filter warna merah, hijau dan biru

figure; % Menampilkan Figure
subplot(121);imshow(J);title('Gambar Asli + Noise'); % Membuat plot dan menampilkan hasil dari J ( gambar noise )
subplot(122);imshow(K);title('Perbaikan Gambar Noise'); % Membuat plot dan menampilkan hasil dari K ( hasil pengolahan gambar noise )