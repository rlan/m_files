function [prob]=binomial(k, n, p)
%BINOMIAL Evaluate binomial probability density function
%   prob = binomial(k, n, p)
%
%   P(X=k) = nchoosek(n, k) * p^k * (1-p)^(n-k)
%
%   Rick Lan
%   See LICENSE for the license
%
error(nargchk(3, 3, nargin));

prob = factorial(n)./factorial(k)./factorial(n-k) .* p.^k .* (1-p).^(n-k);