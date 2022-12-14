function Hd = Q1_Filt
%Q1_FILT Returns a discrete-time filter object.

% MATLAB Code
% Generated by MATLAB(R) 9.4 and Signal Processing Toolbox 8.0.
% Generated on: 15-Jan-2021 08:35:32

% FIR Window Lowpass filter designed using the FIR1 function.

% All frequency values are in Hz.
Fs = 22050;  % Sampling Frequency

Fpass = 300;            % Passband Frequency
Fstop = 3400;           % Stopband Frequency
Dpass = 0.17099735734;  % Passband Ripple
Dstop = 0.0001;         % Stopband Attenuation
flag  = 'scale';        % Sampling Flag

% Calculate the order from the parameters using KAISERORD.
[N,Wn,BETA,TYPE] = kaiserord([Fpass Fstop]/(Fs/2), [1 0], [Dstop Dpass]);

% Calculate the coefficients using the FIR1 function.
b  = fir1(N, Wn, TYPE, kaiser(N+1, BETA), flag);
Hd = dfilt.dffir(b);

% [EOF]
