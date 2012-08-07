function [rmsds] = rmsdelay(b)
%RMSDELAY Compute RMS delay spread.
%   rmsds = RMSDELAY(b)
%
%   Compute RMS delay spread r.s.t the center tap of 
%   coefficients 'b'. If number of taps is even, then center
%   tap is x.5.
%
%   Rick Lan
%   See LICENSE for license.
%

center = length(b)/2 + 0.5;
x = b(:);
weight = [1:length(b)]';

n = sum( ((weight-center).^2) .* xdata.^2) );
d = sum( (x.^2) );

rmsds = sqrt(n/d);
