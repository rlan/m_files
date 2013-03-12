function [k]=kfft(n_fft, n_dc_guard, n_nyquist_guard, is_shifted)
%KFFT Return FFT bin indices.
%   k = KFFT(n_fft, n_dc_guard, n_nyquist_guard, shifted)
%      n_fft: FFT size
%      n_dc_guard: Number of DC guard bins
%      n_nyquist_guard: Number of nyquist guard bins
%      shifted: Omit for all positive bin values. Otherwise
%               bins >= Nyquist are negative.
%   In general, this is used to get the bin indices for OFDM
%   systems.
%
%   Examples:
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

start = n_dc_guard;
stop = n_fft/2 - 1 - n_nyquist_guard;
lower_half = [start:stop]';

start = n_fft/2 + n_nyquist_guard + 1;
stop = n_fft-1 - (n_dc_guard - 1);
if nargin >= 4
    start = start - n_fft;
    stop = stop - n_fft;
end
upper_half = [start:stop]';

k = [lower_half; upper_half];
