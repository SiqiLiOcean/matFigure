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
function mf_xtick_minus(gh)

xtick = get(gh, 'xtick');
xticklabel = get(gh, 'xticklabel');


if ischar(xticklabel)
    xticklabel = cellstr(xticklabel);
end

for i = 1 : length(xticklabel)

    if isempty(xticklabel{i})
        continue
    end
    
    k = strfind(xticklabel{i}, '-');
    
    if ~isempty(k)
        xticklabel{i}(k) = [];
    else
        if (xtick(i)~=0)
            xticklabel{i} = ['-' xticklabel{i}];
        end
    end
end

set(gh, 'xticklabel', xticklabel);

