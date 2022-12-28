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
function mf_ytick_minus(ax)

ytick = get(ax, 'ytick');
yticklabel = get(ax, 'yticklabel');

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

set(ax, 'yticklabel', yticklabel);
