function [y] = snr(ref, noisy)
%SNR Compute signal-to-noise ratio.
%   Y = SNR(REF, NOISY)
%   Input data structure supported: scalar, vector.
%   Input data type supported: real, complex.
%
%   Rick Lan
%   See LICENSE for the license.
%
error(nargchk(2, 2, nargin));
e = noisy - ref;
num = mean( ref.*conj(ref) );
den = mean( e.*conj(e) );
y = num / den;
