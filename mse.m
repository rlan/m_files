function [m] = mse(ref, cmp)
%MSE Compute mean squared error.
%   Y = MSE(REF, NOISY)
%   Input data structure supported: scalar, vector.
%   Input data type supported: real, complex.
%
%   Rick Lan
%   See LICENSE for the license.
%
error(nargchk(2, 2, nargin));
e = cmp - ref;
num = mean( cmp.*conj(cmp) );
den = mean( e.*conj(e) );
m = num / den;
