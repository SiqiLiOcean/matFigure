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
function mf_ytick_shift(gh, shift)

ytick = get(gh, 'ytick');
% xticklabel = get(gca, 'xticklabel');

for i = 1 : length(ytick)
    
    yticklabel{i} = num2str(ytick(i) + shift);
    
end

set(gh, 'yticklabel', yticklabel);

