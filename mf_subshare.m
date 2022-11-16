function h = mf_subshare


h = axes(gcf, 'visible', 'off');
h.Title.Visible = 'on';
h.XLabel.Visible = 'on';
h.YLabel.Visible = 'on';

x1 = h.Position(1);
x2 = x1 + h.Position(3);
y1 = h.Position(2);
y2 = y1 + h.Position(4);

h.XLabel.Position(1) = (x1+x2)/2;
h.YLabel.Position(2) = (y1+y2)/2;

% xlabel(h, 'Distance (10^2km)')
% ylabel(h, 'Depth (m)')
% h.XLabel.Position(2) = h.XLabel.Position(2)+0.02;
% h.YLabel.Position(1) = h.YLabel.Position(1)-0.03;
% h.YLabel.Position(2) = h.YLabel.Position(2)-0.07;
