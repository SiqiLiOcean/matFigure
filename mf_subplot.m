%==========================================================================
%
%
% input  :
% 
% output :
%
% Siqi Li, SMAST
% yyyy-mm-dd
%
% Updates:
%
%==========================================================================
function ax = mf_subplot(nx, ny, varargin)

pos = mf_subpos(nx, ny, varargin{:});

% figure
k = 0;

for j = 1 : ny
    for i = 1 : nx
        k = k + 1;
        ax(k) = subplot('position', pos(k,:));
        if j<ny
            set(gca, 'xticklabel', '')
        end
        if i>1
            set(gca, 'yticklabel', '')
        end
    end
end

