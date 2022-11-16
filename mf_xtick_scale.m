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
function mf_xtick_scale(h, scale)

xtick = get(h, 'xtick');
% xticklabel = get(gca, 'xticklabel');

for i = 1 : length(xtick)
    
    xticklabel{i} = num2str(xtick(i) * scale);
    
end

set(h, 'xticklabel', xticklabel);

