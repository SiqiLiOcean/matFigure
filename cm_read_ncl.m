function cm = cm_read_ncl(fin)
% 
% clc
% clear
% fin = './ncl_cb/OceanLakeLandSnow.rgb';

fid = fopen(fin);

while ~feof(fid)
    
    % Read one line
    line = fgetl(fid);
    
    % Remove the # part
    k = strfind(line, '#');
    if ~isempty(k)
        line(k:end) = [];
    end
    
    % 
    if isempty(line)
        continue
    end
    
    % Read the ncolors
    if contains(line, 'ncolors')
        k = strfind(line, '=');
        ncolors = str2num(line(k+1:end));
        cm = nan(ncolors, 3);
        i = 0;
        continue
    end
    
    i = i + 1;
    cm(i, :) = str2num(line);
       
    
end


fclose(fid);

% Convert cm from (0 1) to [0 255]
if max(cm) <= 1.01
    cm = round(cm*255);
end