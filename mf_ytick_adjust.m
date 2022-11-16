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
function mf_ytick_adjust(shift, scale)

ytick = get(gca, 'ytick');
% xticklabel = get(gca, 'xticklabel');

for i = 1 : length(ytick)
    
    yticklabel{i} = num2str((ytick(i) + shift)*scale);
    
end

set(gca, 'yticklabel', yticklabel);

