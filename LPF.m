I = imread('badminton.jpg'); % Membaca file gambar dari hardisk
radius = 10; % Nilai tingkat kehalusan gambar
J10 = fspecial('disk', radius); % Menambah effect gambar
K10 = imfilter(I,J10,'replicate'); % Proses penggabungan nilai radius dan gambar asli, sehingga diperoleh tingkat kehalusan gambar
subplot(121);imshow(I);title('Original');  % Membuat plot dan menampilkan hasil dari I ( gambar asli )
subplot(122);imshow(K10);title('Hasil Nilai Radius=10'); % Membuat plot dan menampilkan hasil dari K10 ( gambar dari hasil LPF )