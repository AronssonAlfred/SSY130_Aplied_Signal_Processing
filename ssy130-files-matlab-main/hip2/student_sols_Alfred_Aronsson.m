%NO_PFILE
function [funs, student_id] = student_sols()
%STUDENT_SOLS Contains all student solutions to problems.

% ----------------------------------------
%               STEP 1
% ----------------------------------------
% Set to your birthdate / the birthdate of one member in the group.
% Should a numeric value of format YYYYMMDD, e.g.
% student_id = 19900101;
% This value must be correct in order to generate a valid secret key.
student_id = 20000729;


% ----------------------------------------
%               STEP 2
% ----------------------------------------
% Your task is to implement the following skeleton functions.
% You are free to use any of the utility functions located in the same
% directory as this file as well as any of the standard matlab functions.


    function h = gen_filter()
    % Define parameters
    Dt = 1; % Sampling interval
    fs = 1/Dt; % Sampling frequency (Hz)
    passband_freq = 0.05/(fs/2); % Normalized passband frequency (Hz)
    stopband_freq = 0.1/(fs/2); % Normalized stopband frequency (Hz)


    N = 60; % +1 Filter order
    freqs = [0, passband_freq, stopband_freq, 1]; 
    mags = [0, passband_freq*pi, 0, 0];

    h = firpm(N, freqs, mags, 'differentiator');

end

funs.gen_filter = @gen_filter;


% This file will return a structure with handles to the functions you have
% implemented. You can call them if you wish, for example:
% funs = student_sols();
% some_output = funs.some_function(some_input);
end

