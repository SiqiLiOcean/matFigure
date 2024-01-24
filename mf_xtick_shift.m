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
function mf_xtick_shift(gh, shift)

xtick = get(gh, 'xtick');
% xticklabel = get(gca, 'xticklabel');

for i = 1 : length(xtick)
    
    xticklabel{i} = num2str(xtick(i) + shift);
    
end


set(gh, 'xticklabel', xticklabel);

