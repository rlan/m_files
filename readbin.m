function [data]=readbin(file_name)
%READBIN Read binary data file as list of unsigned 32-bit integers.
%   y = readbin(file_name)
%
%   Todo: Check file exists.
%
%   Rick Lan
%   See LICENSE for the license.
%
fid = fopen(file_name, 'r');
data = fread(fid, 'uint32');
fclose(fid);
