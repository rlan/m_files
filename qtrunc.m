function [y]=qtrunc(x,lsb)
%QTRUNC Truncate to nearest multiple of 2^-lsb for each element.
%   Y = QTRUNC(X, LSB)
%   Input data type supported: scalar, vector.
%
%   Rick Lan
%   See LICENSE for the license.
%
error(nargchk(2, 2, nargin));
y = floor(x.* (2^lsb)).*(2^-lsb);
