function cm_write_visit(cm, fout)

% clc
% clear
% load('cm.mat');
% fout = 'NCL_cmocean_delta.ct';

fid = fopen(fout, 'w');

n = size(cm, 1);

fprintf(fid, '%s\n', '<?xml version="1.0"?>');
fprintf(fid, '%s\n', '<Object name="ColorTable">');
fprintf(fid, '%s\n', '    <Field name="Version" type="string">3.2.1</Field>');
fprintf(fid, '%s\n', '    <Object name="ColorControlPointList">');
for i = 1 : n
    fprintf(fid, '%s\n', '        <Object name="ColorControlPoint">');
    fprintf(fid, '%s %d %d %d %d %s\n', '            <Field name="colors" type="unsignedCharArray" length="4">', cm(i,:), 255,' </Field>');
    fprintf(fid, '%s %f %s\n', '            <Field name="position" type="float">', (i-1)/(n-1), '</Field>');
    fprintf(fid, '%s\n', '        </Object>');
end

fprintf(fid, '%s\n', '        <Field name="category" type="string">UserDefined</Field>');
fprintf(fid, '%s\n', '    </Object>');
fprintf(fid, '%s\n', '</Object>');

fclose(fid);
