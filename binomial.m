function [prob]=binomial(p, n, k)
%BINOMIAL Evaluate binomial distribution
%   prob = binomial(p, n, k)
%
%   P(X=k) = nchoosek(n, k) * p^k * (1-p)^(n-k)
%
%   Rick Lan
%   See LICENSE for the license
%
error(nargchk(3, 3, nargin));

prob = nchoosek(n, k) * p^k * (1-p)^(n-k);