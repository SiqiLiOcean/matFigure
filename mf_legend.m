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
function hl = mf_legend(target, label, NumColumns, varargin)

hl = legend(target, label);
hl.EdgeColor = 'none';
hl.AutoUpdate = 'off';
hl.NumColumns = NumColumns;

if ~isempty(varargin)
    set(hl, varargin{:})
end