function cm_check(cm, varargin)



ymax = 40;

% Scale the [0 255] to [0 1]
if any(cm(:)>1)
    cm = cm/255;
end

% Interpolate the colorbar matrix if the number is not 256
n1 = size(cm, 1);
% % if n1~=256
% %     i1 = 255/(n1-1) * [1:n1] + (n1-256)/(n1-1);
% %     i2 = 1 : 256;
% %     r = interp1(i1, cm(:,1), i2);
% %     g = interp1(i1, cm(:,2), i2);
% %     b = interp1(i1, cm(:,3), i2);
% %     
% %     cm = [r(:) g(:) b(:)];
% % end



n1 = size(cm, 1);
figure('position', [629.8 324.2 728.8 260.8])
box off
hold on
for i = 1 : n1
    x = [i-1 i i i-1 i-1];
    y = [0 0 ymax ymax 0];
    patch(x, y, cm(i,:), 'EdgeColor', 'none')
end

if n1 == 256
for i = 1 : 9
    plot([(i-1)/8*n1 (i-1)/8*n1], [0 ymax], 'k-')
end


for i = 1 : 4
    text(i, ymax*1.1, num2str(i/4*n1), 'HorizontalAlignment', 'center')
end
end

% axis equal
% axis([0 256 0 ymax*1.2])
axis([0 n1 0 ymax*1.2])
set(gca, 'ytick', [])
% set(gca, 'xtick', 0:32:256)
set(get(gca, 'Yaxis'), 'Visible', 'off')

if ~isempty(varargin)

    FIGURE = [fundir('cm_check') 'cm/' lower(varargin{1}) '.png'];
    MAT = [fundir('cm_check') 'cm/' lower(varargin{1}) '.mat'];
%     if contains(computer, 'WIN')
%         k = strfind(out_path, '\');
%         FIGURE = [out_path(1:k(end)) 'cm\' OUT '.png'];
%         MAT = [out_path(1:k(end)) 'cm\' OUT '.mat'];
%     else
%         k = strfind(out_path, '/');
%         FIGURE = [out_path(1:k(end)) 'cm/' OUT '.png'];
%         MAT = [out_path(1:k(end)) 'cm/' OUT '.mat'];
%     end

%     mf_save(FIGURE);
    save(MAT, 'cm');
end

end