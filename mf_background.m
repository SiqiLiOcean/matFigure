%==========================================================================
% Set the background color (can be saved to file)
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
function h = mf_background(ax, varargin)

varargin = read_varargin(varargin, {'Color'}, {[222,184,135]/255});
varargin = read_varargin(varargin, {'xlims'}, {xlim(ax)});
varargin = read_varargin(varargin, {'ylims'}, {ylim(ax)});


% % if isempty(varargin)
% %     xlims = xlim(ax);
% %     ylims = ylim(ax);
% % else
% %     xlims = varargin{1};
% %     ylims = varargin{2};
% % end

 
px = xlims([1 2 2 1 1]);
py = ylims([1 1 2 2 1]);

h = patch(ax, px, py, 1, 'FaceColor', Color);


end
