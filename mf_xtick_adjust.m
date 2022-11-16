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
function mf_xtick_adjust(shift, scale)

xtick = get(gca, 'xtick');
% xticklabel = get(gca, 'xticklabel');

for i = 1 : length(xtick)
    
    xticklabel{i} = num2str((xtick(i) + shift)*scale);
    
end

set(gca, 'xticklabel', xticklabel);

