%==========================================================================
% Create a movie from matlab plots --- run
%
% input  :
%   mov       --- handle of the movie
%
% output :
%
% Siqi Li, SMAST
% 2024-04-26
%
% Updates:
%
%==========================================================================
function mf_movie_run(mov, varargin)

writeVideo(mov, getframe(gcf));

