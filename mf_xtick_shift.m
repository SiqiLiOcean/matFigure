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
function mf_xtick_shift(shift)

xtick = get(gca, 'xtick');
% xticklabel = get(gca, 'xticklabel');

for i = 1 : length(xtick)
    
    xticklabel{i} = num2str(xtick(i) + shift);
    
end


set(gca, 'xticklabel', xticklabel);

