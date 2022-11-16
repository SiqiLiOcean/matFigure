%==========================================================================
%
%
% input  :
%
% output :
%
% Siqi Li, SMAST
% yyyy-mm-dd
%
% Updates:
%
%==========================================================================
function mf_save_obj(ffig, gcf, varargin)

varargin = read_varargin(varargin, {'All'}, {0});


hgcf = get(gcf);

for i = 1 : length(hgcf.Children)
    if endsWith(class(hgcf.Children(i)), 'Axes')
        hgca = hgcf.Children(i);
    elseif endsWith(class(hgcf.Children(i)), 'Legend')
        hlegend = hgcf.Children(i);
    end
end


% hgca.Visible ='off';
hgca.XAxis.Visible = 'off';
hgca.YAxis.Visible = 'off';
hlegend.AutoUpdate = 'off';

xlims = hgca.XLim;
ylims = hgca.YLim;
patch(xlims([1 2 2 1]), ylims([1 1 2 2]), 'w', 'EdgeColor', 'w');


mf_save(ffig, varargin{:}, 'All', All);


