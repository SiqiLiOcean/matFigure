%==========================================================================
%
%
% input  :
% 
% output :
%
% Example:
%   mf_label(ax, txt, 'bottomleft', 'BackGroundColor', 'none')
%   mf_label(ax, txt, 'topright', 'EdgeColor', 'k')
%
% Siqi Li, SMAST
% yyyy-mm-dd
%
% Updates:
%
%==========================================================================
function h = mf_label(ax, txt, location, varargin)

varargin = read_varargin(varargin, {'kH'}, {0.03});
varargin = read_varargin(varargin, {'kV'}, {0.036});


xlims = get(ax, 'xlim');
ylims = get(ax, 'ylim');

x1 = xlims(1);
x2 = xlims(2);
y1 = ylims(1);
y2 = ylims(2);
dx = x2 - x1;
dy = y2 - y1;

% kH = 0.03;
% kV = 0.036;
if contains(lower(location), 'bottom')
    py = y1 + kV*dy;
elseif contains(lower(location), 'top')
    py = y2 - kV*dy;
else
    error('Wrong location')
end

if contains(lower(location), 'left')
    px = x1 + kH*dx;
elseif contains(lower(location), 'right')
    px = x2 - kH*dx;
else
    error('Wrong location')
end


h = text(ax, px, py, txt);
set(h, 'BackGroundColor', 'w')

if contains(lower(location), 'bottom')
    set(h, 'VerticalAlignment', 'bottom')
elseif contains(lower(location), 'top')
    set(h, 'VerticalAlignment', 'top')
end

if contains(lower(location), 'left')
    set(h, 'HorizontalAlignment', 'left')
elseif contains(lower(location), 'right')
    set(h, 'HorizontalAlignment', 'right')
end

if ~isempty(varargin)
    set(h, varargin{:})
end