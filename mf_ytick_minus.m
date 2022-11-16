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
function mf_ytick_minus

ytick = get(gca, 'ytick');
yticklabel = get(gca, 'yticklabel');

for i = 1 : length(yticklabel)
    
    if isempty(yticklabel{i})
        continue
    end

    k = findstr(yticklabel{i}, '-');
    
    if ~isempty(k)
        yticklabel{i}(k) = [];
    else
        if (ytick(i)~=0)
            yticklabel{i} = ['-' yticklabel{i}];
        end
    end
end

set(gca, 'yticklabel', yticklabel);
