%==========================================================================
% Draw the box line
%
% input  :
% 
% output :
%
% Siqi Li, SMAST
% 2022-10-26
%
% Updates:
%
%==========================================================================
function h = mf_box(ax, varargin)

varargin = read_varargin(varargin, {'Linewidth'}, {.6});

if isempty(varargin)
    xlims = xlim(ax);
    ylims = ylim(ax);
else
    xlims = varargin{1};
    ylims = varargin{2};
end

 
px = [xlims(1) xlims(2) xlims(2) xlims(1) xlims(1)];
py = [ylims(1) ylims(1) ylims(2) ylims(2) ylims(1)];

h = plot(ax, px, py, 'k-', 'linewidth', Linewidth);


end
