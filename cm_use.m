function varargout = cm_use(cm_name, varargin)

cm = cm_load(cm_name, varargin{:});
colormap(cm);

if nargout >0
    varargout{1} = cm;
end

end