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
function mf_save(ffig, varargin)

read_varargin(varargin, {'Resolution'}, {300});


v = version;
k = strfind(v,'R');
v = v(k+1:k+4);

if v >= 2020
    exportgraphics(gcf, ffig,'Resolution',Resolution);
else
    
    print(ffig, '-dpng', ['-r' num2str(Resolution)])
end


mf_margin(ffig, ffig, varargin{:});