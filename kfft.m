function [k]=kfft(n_fft, n_dc_guard, n_nyquist_guard, shifted)
%KFFT Return FFT bin indices.
%   k = KFFT(n_fft, n_dc_guard, n_nyquist_guard, shifted)
%      n_fft: FFT size
%      n_dc_guard: Number of DC guard bins.
%      n_nyquist_guard: Number of nyquist guard bins.
%      shifted: Omit for all positive bin values. Otherwise
%               bins >= Nyquist are negative.
%   In general, this is used to get the bin indices for OFDM
%   systems.
%
%   Examples:
%
%   >> kfft(256, 0, 0)
%   returns [0:255]'
%
%   >> kfft(256, 4, 12)
%   returns [4:115, 141:252]'
%
%   >> kfft(256, 4, 12, nan)
%   returns [4:115, -115:-4]'
%
%   Rick Lan
%   See LICENSE for license.
%
error(nargchk(3, 4, nargin));

lower = [0:n_fft/2-1]';
upper = [n_fft/2:n_fft-1]';
%[min(lower), max(lower), min(upper), max(upper)]

if (n_dc_guard > 0) | (n_nyquist_guard > 0)
    len = length(lower);
    lower = lower(n_dc_guard+1:len-n_nyquist_guard);
    upper = upper((n_nyquist_guard+1)+1:len-(n_dc_guard-1));
    %[min(lower), max(lower), min(upper), max(upper)]
end

if nargin >= 4
    upper = upper - n_fft;
    %[min(lower), max(lower), min(upper), max(upper)]
end

k = [lower;upper];
