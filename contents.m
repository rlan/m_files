%m_files Toolbox
%---------------
%Rick Lan, 2012
%
%Functions in this toolbox are common tasks that do not have commands in 
%MATLAB. They are grouped by topics as shown below.
%
%File Input/Output:
%   readbin     - Read binary data file as list of unsigned 32-bit integers.
%Fixed-point:
%   qround      - Round to nearest multiple 2^-lsb for each element.
%   qtrunc      - Truncate to nearest multiple of 2^-lsb for each element.
%Plots and Graphics:
%   xlimall     - Call XLIM for each subplots of the figure.
%   ylimall     - Call YLIM for each subplots of the figure.
%Signal Processing:
%   cx2iq       - Convert a complex vector to a Nx2 matrix.
%   iq2cx       - Convert a Nx2 real matrix to a complex Nx1 vector.
%   mse         - Compute mean squared error.
%   roundodd    - Round to the nearest odd integer.
%   rmsdelay    - Compute RMS delay spread.
%   snr         - Compute signal-to-noise ratio.
