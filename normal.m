function [y] = normal(mu, sigma, x)
%NORMAL Evaluate normal probability density function
% [y] = normal(mu, sigma, x)
%
% See LICENSE for the license
%
y = exp(-(x-mu).^2./2./(sigma.^2)) ./ sqrt(2*pi) ./ sigma;
