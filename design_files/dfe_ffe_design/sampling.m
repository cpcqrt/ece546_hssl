function [n, xd, tn, baseLevel,h] = sampling(t,x, sample_time, t0, range, varargin)
% Sampling sample the continuous signal and return the discretized signal
% 
% 
% 

p = inputParser;
p.addOptional('shiftBaseLine',true);
p.addOptional('labelRange',[-1,1]);
p.parse(varargin{:});

if p.Results.shiftBaseLine
    baseLevel = x(end);
else
    baseLevel = 0;
end
x = x - baseLevel;

range = sort(range(:));
n = min(range) : max(range);
tn = t0 + n.*sample_time;
xd = interp1(t,x,tn,'spline');

%% plot

h(1) = plot(t,x);    hold on;
h(2) = stem(tn, xd,...
    'linestyle',':',...
    'marker','o');
xlim([min(tn),max(tn)] + [-1,1].*0.4e-9);

xlabel('time (s)');
if p.Results.shiftBaseLine
    ylabel('Shifted Signal (V)');
else
    ylabel('Signal (V)');
end

% mark data point
for ii = (p.Results.labelRange(1):p.Results.labelRange(2)) - range(1) +1 
    print_str = sprintf('[%d]: %-8.3f',n(ii), xd(ii));
    if n(ii) == -1
        text(tn(ii),xd(ii),[print_str, '  \rightarrow'],...
            'HorizontalAlignment','right');        
    elseif n(ii) == 1 || n(ii) == 0
        text(tn(ii),xd(ii),['  \leftarrow', print_str],...
            'HorizontalAlignment','left');
    end
end
print_table([n; xd],{'%.3g'},{},{'n','$V$'},'printBorder',1,...
    'printMode','latex');
end