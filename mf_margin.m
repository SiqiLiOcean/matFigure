%==========================================================================
% Remove/reset the margin of the figure
%
% input  :
%   fin
%   fou
% 
% output :
%
% Siqi Li, SMAST
% 2022-01-19
%
% Updates:
%
%==========================================================================
function mf_margin(fin, fout, varargin)

read_varargin2(varargin, {'All', 'Horizontal', 'Vertical'});
All_flag = All;
Horizontal_flag = Horizontal;
Vertical_flag = Vertical;

varargin = read_varargin(varargin, {'All'}, {1});
varargin = read_varargin(varargin, {'Horizontal'}, {1});
varargin = read_varargin(varargin, {'Vertical'}, {1});
varargin = read_varargin(varargin, {'Left'}, {1});
varargin = read_varargin(varargin, {'Right'}, {1});
varargin = read_varargin(varargin, {'Bottom'}, {1});
varargin = read_varargin(varargin, {'Top'}, {1});


if All_flag
    Left = All;
    Right = All;
    Bottom = All;
    Top = All;
end

if Horizontal_flag
    Left = Horizontal;
    Right = Horizontal;
end

if Vertical_flag
    Bottom = Vertical;
    Top = Vertical;
end




RGB = imread(fin);

RGB_sum = sum(RGB, 3);

[nx, ny, ~] = size(RGB);


y = all(RGB_sum==255*3, 1);
x = all(RGB_sum==255*3, 2);

%
y1 = 1;
for i = 1 : ny
    if y(i)
        y1 = y1 + 1;
    else
        break
    end
end
%
y2 = ny;
for i = ny : -1 : 1
    if y(i)
        y2 = y2 - 1;
    else
        break
    end
end
%
x1 = 1;
for i = 1 : nx
    if x(i)
        x1 = x1 + 1;
    else
        break
    end
end
%
x2 = nx;
for i = nx : -1 : 1
    if x(i)
        x2 = x2 - 1;
    else
        break
    end
end



RGB2 = RGB(x1:x2, y1:y2,:);

[nx2, ny2, ~] = size(RGB2);

RGB3 = ones(nx2+Top+Bottom, ny2+Left+Right, 3) * 255;
RGB3 = uint8(RGB3);
[nx3, ny3, ~] = size(RGB3);

RGB3(Top+1:nx3-Bottom, Left+1:ny3-Right, :) = RGB2;



imwrite(RGB3, fout);

