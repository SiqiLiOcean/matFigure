%==========================================================================
% Set the axis ticks
%
% input  :
% 
% output :
%
% Siqi Li, SMAST
% 2022-04-28
%
% Updates:
%
%==========================================================================
function mf_tick(ax, varargin)

varargin = read_varargin(varargin, {'TickLength'}, {[0.025 0.01]});
varargin = read_varargin(varargin, {'TickDir'}, {'out'});
varargin = read_varargin(varargin, {'XMinorTick'}, {'on'});
varargin = read_varargin(varargin, {'YMinorTick'}, {'on'});
varargin = read_varargin(varargin, {'dx'}, {nan});
varargin = read_varargin(varargin, {'dy'}, {nan});
varargin = read_varargin(varargin, {'Scale'}, {1});


set(ax, 'TickLength', TickLength*Scale)
set(ax, 'TickDir', TickDir)
% if ~contains(class(ax), 'GeographicAxes')
switch class(ax)
    case 'GeographicAxes'
    case 'matlab.graphics.illustration.ColorBar'
    otherwise
        set(ax, 'XMinorTick', XMinorTick)
        set(ax, 'YMinorTick', YMinorTick)


        if ~isnan(dx)
            xlims = get(gca, 'xlim');
            XMinorTickValues = floor(xlims(1)) : dx : ceil(xlims(2));
            XAxis = get(ax, 'XAxis');
            set(XAxis, 'MinorTickValues', XMinorTickValues)
        end
        if ~isnan(dy)
            ylims = get(gca, 'ylim');
            YMinorTickValues = floor(ylims(1)) : dy : ceil(ylims(2));
            YAxis = get(ax, 'YAxis');
            set(YAxis, 'MinorTickValues', YMinorTickValues)
        end

end

if ~isempty(varargin)
    set(ax, varargin{:})
end
