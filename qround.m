function [y]=qround(x,lsb)
%QROUND Round to nearest multiple 2^-lsb for each element.
%   Y = QROUND(X, LSB)
%   Input data type supported: scalar, vector.
%
%   Rick Lan
%   See LICENSE for the license.
%
y = round(x.* (2^lsb)).*(2^-lsb);
