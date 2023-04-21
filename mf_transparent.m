%==========================================================================
% Change one color from an image to transparent pixels
%
% input  :
%   fin
%   fout
% 
% output :
%
% Siqi Li, SMAST
% 2023-04-14
%
% Updates:
%
%==========================================================================
function mf_transparent(fin, fout, varargin)

read_varargin(varargin, {'BackGroundColor'}, {[255 255 255]});  % White


A = imread(fin);
[nx, ny] = size(A, [1 2]);

k1 = A(:,:,1)==BackGroundColor(1);
k2 = A(:,:,2)==BackGroundColor(2);
k3 = A(:,:,3)==BackGroundColor(3);
k = all([k1(:) k2(:) k3(:)], 2);

sum(k)
alpha = ones(nx, ny);
alpha(k) = 0;


imwrite(A, fout, 'Alpha', alpha);


