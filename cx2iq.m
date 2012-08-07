function [y]=cx2iq(x)
%CX2IQ Convert a complex vector to a Nx2 matrix.
%   Y = CX2IQ(X)
%   Returns a column vector.
%
%   Rick Lan
%   See LICENSE for license.
%
y = [real(x(:)), imag(x(:))];
