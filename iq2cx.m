function [y]=iq2cx(x)
%IQ2CX Convert a Nx2 matrix to a complex Nx1 vector.
%   Y = IQ2CX(X)
%   Assumes input's first column is real part and second 
%   column imaginary part. Other columns are ignored.
%
%   Rick Lan
%   See LICENSE for license.
%
y = x(:,1)+1i*x(:,2);
