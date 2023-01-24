%==========================================================================
%
%
% input  :
% 
% output :
%
% Siqi Li, SMAST
% 2021-11-30
%
% Updates:
%
%==========================================================================
function mf_ytick_scale(h, scale)

ytick = get(h, 'ytick');
% xticklabel = get(gca, 'xticklabel');

for i = 1 : length(ytick)
    
    yticklabel{i} = num2str(ytick(i) * scale);
    
end

set(h, 'yticklabel', yticklabel);

