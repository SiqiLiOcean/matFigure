% Lims   --- [0 1]  or  [0.1 0.8] ...
% ncolor --- the color number
function cm = cm_load(cm_name, varargin)


varargin = read_varargin(varargin, {'Lims'}, {[0 1]});
varargin = read_varargin(varargin, {'Ncolor'}, {[]});
varargin = read_varargin2(varargin, {'Flip'});


%     cm_path = which('cm_load');
%     k = strfind(cm_path, ("/"|"\"));
%     MAT = [cm_path(1:k(end)) 'cm\' lower(cm_name) '.mat'];
    cm_path = fundir('cm_load');
    MAT = [cm_path 'cm/' lower(cm_name) '.mat'];

    data = load(MAT);
    cm = data.cm;
    
    n = size(cm,1);
    Lims = round(Lims*(n-1)+1);
    if Lims(1)<Lims(2)
        cm = cm(Lims(1) : Lims(2), :);
    elseif Lims(1)>Lims(2)
        cm = cm(Lims(2) : Lims(1), :);
    else
        error('Only one color left')
    end
    
    if ~isempty(Ncolor)
        cm0 = cm;
        n = size(cm,1);
        k = round(linspace(1, n, Ncolor));
        a = mod(n, Ncolor);
        b = floor(n/Ncolor);
        cm = [];
%         for i = 1 : Ncolor
%             if i <= a
%                 cm = [cm; repmat(cm0(k(i),:), b+1, 1)];
%             else
%                 cm = [cm; repmat(cm0(k(i),:), b, 1)];
%             end
%         end
        for i = 1 : Ncolor
            cm = [cm; cm0(k(i),:)];
        end
    end
    
    
    if Flip
        cm = flip(cm, 1);
    end
end

