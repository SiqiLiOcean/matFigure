%==========================================================================
% Create a movie from matlab plots
%
% input  :
%   fmov      --- output movie file path and name
%   FrameRate --- frame rate (how many plots per second)
%
% output :
%   mov       --- handle of the movie
%
% Siqi Li, SMAST
% 2024-04-26
%
% Updates:
%
%==========================================================================
function mov = mf_movie_initial(fmov, varargin)

read_varargin(varargin, {'FrameRate'}, {5});


mov = VideoWriter(fmov);
mov.FrameRate = FrameRate;

open(mov);

