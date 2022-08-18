function filt = Ideal_Filter(p, q, pass, parameter)
H = zeros(p, q);
N = 1;
for i = 1:p
   for j = 1:q
       D = sqrt((i - p/2)^2 + (j - q/2)^2);
       
       H(i, j) = (D < parameter);
   end
end
if strcmp('high',pass) == 1
   H = 1 - H; 
end
filt = H;
end