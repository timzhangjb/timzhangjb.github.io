clear;close all;clc;

f = imread('grad_ori.jpg');

fd = double(f);

ori = [193, 137, 210];

violet = [148, 0, 211];

diff = violet - ori;

diff_mat = ones(size(fd));
diff_mat(:, :, 1) = diff_mat(:, :, 1)*diff(1);
diff_mat(:, :, 2) = diff_mat(:, :, 2)*diff(2);
diff_mat(:, :, 3) = diff_mat(:, :, 3)*diff(3);

fnew = fd + diff_mat;

fn = uint8(fnew);
imwrite(fn, 'banner.jpg');