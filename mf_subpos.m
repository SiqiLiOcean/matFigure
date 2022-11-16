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
function pos = mf_subpos(nx, ny, varargin)

read_varargin(varargin, {'ratio'}, {1});
read_varargin(varargin, {'margin_bottom'}, {0.12});
read_varargin(varargin, {'margin_top'},    {0.05});
read_varargin(varargin, {'margin_left'},   {0.12});
read_varargin(varargin, {'margin_right'},  {0.05});
read_varargin(varargin, {'gap_x'}, {0.01});
read_varargin(varargin, {'gap_y'}, {0.01});

% margin_bottom = 0.12;
% margin_top = 0.05;
% margin_left = 0.12;
% margin_right = 0.05;
% gap_x = 0.01;
% gap_y = 0.01;
% ratio = 0.916666666;
% nx = 3;
% ny = 3;


% fig_pos = get(0, 'DefaultFigurePosition');
fig_pos = get(gcf, 'Position');

fig_ratio = (fig_pos(4)-fig_pos(2)) / (fig_pos(3)-fig_pos(1));

% gap_y = gap_y / fig_ratio;



% First calculate the dx and dy based on x direction
dx = (1 - margin_left - margin_right + gap_x)/nx - gap_x;
dy = dx * ratio / fig_ratio;
% dy = dx * ratio;

% Then check if the dy fits on y direction
if margin_bottom + margin_top + ny*dy + (ny-1)*gap_y >1
    % If not, calculate the dy and dx based on y direction
    dy = (1 - margin_top - margin_bottom + gap_y)/ny - gap_y;
    dx = dy * fig_ratio / ratio;
%     dx = dy / ratio;
end


%
x_start = margin_left + (dx+gap_x) * (0:(nx-1));
y_start = margin_bottom + (dy+gap_y) * (0:(ny-1));
y_start = flip(y_start);

% figure
k = 0;
pos = nan(nx*ny, 4);
for j = 1 : ny
    for i = 1 : nx
        k = k + 1;
        pos(k, :) = [x_start(i) y_start(j) dx dy];
%         if j<ny
%             set(gca, 'xticklabel', '')
%         end
%         if i>1
%             set(gca, 'yticklabel', '')
%         end
    end
end

