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
function mf_ytick_shift(shift)

ytick = get(gca, 'ytick');
% xticklabel = get(gca, 'xticklabel');

for i = 1 : length(ytick)
    
    yticklabel{i} = num2str(ytick(i) + shift);
    
end

set(gca, 'yticklabel', yticklabel);

