function [y]=roundodd(x)
%ROUNDODD Round to the nearest odd integer
%   roundodd(-2) -> -1
%   roundodd(0) -> 1
%   roundodd(2) -> 3
%
%   Supported input size: scalar, vector or matrix.
%
%   Rick Lan
%   See LICENSE for the license.
%
y = 2*floor(x/2)+1;