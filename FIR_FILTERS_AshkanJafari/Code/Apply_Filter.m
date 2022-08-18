function res = Apply_Filter(img, pass, type, parameter)
y = fftshift(fft2(img));
dim = size(img);
p = dim(1);
q = dim(2);

% new_img = zeros(2 * p, 2 * q);
% new_img((0.5*p):(1.5*p-1), (0.5*q):(1.5*q-1)) = img;
% y = fftshift(fft2(new_img));
% p = 2 *p;
% q = 2 * q;
switch type
    case 'Ideal' 
        filt = Ideal_Filter(p, q, pass, parameter);
    case 'Butterworth'
        filt = Butterworth_Filter(p, q, pass, parameter);
    case 'Gaussian'
        filt = Gaussian_Filter(p, q, pass, parameter);
    otherwise
        disp('error')
end

res = y .* filt;
figure
imagesc(log(abs(res)))
res = ifft2(ifftshift(res));
% res = res((0.25*p):(0.75*p-1), (0.25*q):(0.75*q-1));
end