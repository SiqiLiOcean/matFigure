function cm_disp(varargin)


varargin = read_varargin2(varargin, {'Save'});

ymax = 40;

files = dir([fundir('cm_check') '/cm/*.mat']);

n = length(files);

disp('--------------------------------')
disp(['colormap list:'])

figure
for ifile = 1 : n
    
    
    cm_name = files(ifile).name(1:end-4);
    disp(['   ' cm_name])
    
    cm = cm_load(cm_name);
    
    subplot(n,1,ifile)
    hold on
    box off
    for i = 1 : size(cm, 1)
        x = [i-1 i i i-1 i-1];
        y = [0 0 ymax ymax 0];
        patch(x, y, cm(i,:), 'EdgeColor', 'none')
    end
    
    for i = 0:32:256
        plot([i i], [0 ymax], 'k-')
    end
    
    axis equal
    set(gca, 'xtick', [])
    set(gca, 'ytick', [])
%     set(gca, 'xlim', [0 256])
    set(gca, 'xlim', [0 size(cm, 1)])
    set(gca, 'ylim', [0 ymax])
    set(get(gca,'YLabel'), 'Rotation', 0, 'HorizontalAlignment','right')
    ylabel(strrep(cm_name, '_', '\_'))
    
    

end

if (Save)
    FIGURE = [fundir('cm_disp') 'cm\0.png'];
%     exportgraphics(gcf, FIGURE,'Resolution',300)


    mf_save(FIGURE);
end
    