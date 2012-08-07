function xlimall(figure_num, limits)
%XLIMALL Call XLIM for each subplots of the figure.
%   XLIMALL(figure_num, limits)
%
%   XLIMALL(10, [1,100])
%   Call xlim([1,100]) for all subplots in Figure 10.
%
%   See also: XLIM.
%
%   Rick Lan
%   See LICENSE for the license.

fh = get(figure_num); % get the graphics object for the figure
for ii = 1:length(fh.Children) % iterate over list of axes handles
	xlim(fh.Children(ii), limits);
end
