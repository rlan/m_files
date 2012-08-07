function ylimall(figure_num, limits)
%YLIMALL Call YLIM for each subplots of the figure.
%   YLIMALL(figure_num, limits)
%
%   YLIMALL(10, [1,100])
%   Call ylim([1,100]) for all subplots in Figure 10.
%
%   See also: YLIM.
%
%   Rick Lan
%   See LICENSE for the license.

fh = get(figure_num); % get the graphics object for the figure
for ii = 1:length(fh.Children) % iterate over list of axes handles
	ylim(fh.Children(ii), limits);
end
