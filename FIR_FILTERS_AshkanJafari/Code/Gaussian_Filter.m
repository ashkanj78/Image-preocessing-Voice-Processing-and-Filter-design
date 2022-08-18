function filt = Gaussian_Filter(p, q, pass, parameter)
H = zeros(p, q);
for i = 1:p
   for j = 1:q
       D = sqrt((i - p/2)^2 + (j - q/2)^2);
       H(i, j) = exp(- 0.5 * (D / parameter)^2);
   end
end
if strcmp('high',pass) == 1
   H = 1 - H; 
end
filt = H;
end