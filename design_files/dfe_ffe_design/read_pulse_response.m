function [t, p1, p2, timing_info] = read_pulse_response(bitrate_str)
%READING Summary of this function goes here
%   Detailed explanation goes here
if nargin == 0 
    clc; close all;
    bitrate_str = '3G';
%     bitrate_str = '20G';
end

pulse_initial_delay = 1e-9;

filename = sprintf('ideal_channel_response_%sbps.csv',bitrate_str);
switch upper(bitrate_str)
    case '3G'
        pulse_width = 300e-12; % 300ps
    case '20G'
        pulse_width =  50e-12; %  50ps
end

M = csvread(filename,1,0);

t = M(:,1);

p1.p = M(:,2);
p1.n = M(:,4);


p2.p = M(:,6);
p2.n = M(:,8);

if strcmpi(bitrate_str,'3G')
	tmpmp = p1.p;
    p1.p = p1.n;
    p1.n = tmpmp;
    
    tmpmp = p2.p;
    p2.p = p2.n;
    p2.n = tmpmp;
end


p1.d = p1.p - p1.n;
p2.d = p2.p - p2.n;

% pulse_delay: where the 1 is find in our time sequence
% line_delay : time it need to propagate through the line
% pulse_width: pulse width we used here.

timing_info.pulse_delay = find_max_pulse(t,p2.d);
timing_info.line_delay  = timing_info.pulse_delay - pulse_initial_delay - pulse_width/2;
timing_info.pulse_width = pulse_width;

if nargin == 0 
    plot(t, p1.p, t, p1.n);
    plot(t, p2.p, t, p2.n);
%     plot(t, p1.d, t, p2.d);
    xlim([0,6e-9]);
end
end

function max_t = find_max_pulse(t,diff_signal)
% this will cause good signal sample at bad position
[maxV,t_idx] = max(diff_signal(:));
[minV,~] = min(diff_signal(:));
[~,idx_p] = min(abs(diff_signal(1:t_idx)-(maxV + minV)/2));
[~,idx_n] = min(abs(diff_signal(t_idx:end)-(maxV + minV)/2));

idx_n = idx_n + t_idx-1;

peak_idx = floor((idx_p + idx_n)/2);
max_t = t(peak_idx);
end