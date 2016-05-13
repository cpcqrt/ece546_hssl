function design()
clc; close all;
VDD = 1.8;
bitrate_str = '3G';
[t, p1, p2, timing_info] = read_pulse_response(bitrate_str);

rx_diff = p2.d;
tx_diff = p1.d;

%% Sample the rx_diff signals
figure();
[n,rx_diff_dig, tn, baseLevel] = sampling(t,rx_diff, ...
    timing_info.pulse_width, ...
    timing_info.pulse_delay, ...
    [-3,9],...
    'shiftBaseLine',true);
CB_autoScaleAxis({'x'});
title('Sampling of received differential signal w/o FFE');
saveas(gcf,[bitrate_str,filesep,'2_sampling.png']);

% baseLevel
% n
rx_diff_dig


%% FFE design
tapeRange = [-2,0]; % follow the tradition in powerpoint
a = @(nn) rx_diff_dig(nn - min(n) + 1);
na = tapeRange(1): tapeRange(2);
latex_table_for_A = cell(length(na));
latex_header_for_b = cell(length(na),1);
A = zeros(length(na));
c = zeros(length(na),1); c((na == 0)) = VDD;
for ii = 1:length(na)
%     (1:length(na)) - ii
    a_idx = (1:length(na)) - ii;
    tmp_a = a(a_idx);
    A(:,ii) = tmp_a(:);
    for jj = 1:length(a_idx)
        latex_table_for_A{jj,ii} = sprintf('$a_{%d}$',a_idx(jj));
    end
    latex_header_for_b{ii} = sprintf('$b_{%d}$',na(ii));
end
b = A\c;

print_table(latex_table_for_A,{'%s'},'printMode','latex');
print_table(b(:).',{'%8.3f'},latex_header_for_b,{},'printMode','latex');

% transmitted wave
org_sig = {p1.p, p2.p
           p1.n, p2.n
           p1.d, p2.d};
FFE_sig = cell(3,2); 
tmp_sig = cell(3,2);
for ii = 1:6
    FFE_sig{ii} = zeros(length(t),1);
    tmp_sig{ii} = zeros(length(t),1);
end

for ii = 1:length(b)
    tdelay = t + na(ii)*timing_info.pulse_width;
    
    for jj = [1,2,4,5]
        if jj == 2 || jj == 5 % negative part
            tmp_sig{jj} = interp1(tdelay,org_sig{jj} - VDD/2,t,'linear','extrap');
            tmp_sig{jj} = (tmp_sig{jj}.*b(ii));
        else
            tmp_sig{jj} = interp1(tdelay,org_sig{jj},t,'linear','extrap');
            tmp_sig{jj} = tmp_sig{jj}.*b(ii);
        end
        
        FFE_sig{jj} = FFE_sig{jj} + tmp_sig{jj};
    end
end
FFE_sig{2} = FFE_sig{2} + VDD/2;
FFE_sig{5} = FFE_sig{5} + VDD/2;

FFE_sig{3} = FFE_sig{1} - FFE_sig{2};
FFE_sig{6} = FFE_sig{4} - FFE_sig{5};

for pp = 1:2
    figure();
    set(plot(t,org_sig{1,pp},'r--'),'linewidth',2); 
    hold on;
    set(plot(t,org_sig{2,pp},'g--'),'linewidth',2);
    set(plot(t,FFE_sig{1,pp},'r-'),'linewidth',4);
    set(plot(t,FFE_sig{2,pp},'g-'),'linewidth',4);
    if pp == 1
        xlim(1e-9  + timing_info.pulse_width.*[-3,10]);
    else
        xlim(4e-9  + timing_info.pulse_width.*[-5,10]);
    end
    
    xlabel('Time (s)');
    ylabel('Signal (V)');
    legend('w/o FFE, positive', 'w/o FFE, negative',...
        'w/  FFE, positive', 'w/  FFE, negative');
    CB_autoScaleAxis({'x'});
    saveas(gcf,[bitrate_str,filesep,num2str(pp),'.png']);
end

figure();
[~,~,~,~,h1] = sampling(t,org_sig{3,pp}, ...
    timing_info.pulse_width, ...
    timing_info.pulse_delay, ...
    [-2,6],...
    'shiftBaseLine',false,...
    'labelRange',[0,0]);
[~,~,~,~,h2] = sampling(t,FFE_sig{3,pp}, ...
    timing_info.pulse_width, ...
    timing_info.pulse_delay, ...
    [-2,6],...
    'shiftBaseLine',false,...
    'labelRange',[0,0]);
set(CB_gridxy(timing_info.pulse_delay + [-3:6].*timing_info.pulse_width),...
    'linewidth',0.5,'linestyle',':');
set(h1,'linestyle','--');
set(h2,'color','r');
set([h1(2),h2(2)],'linestyle','none');
set([get(h1(2),'BaseLine'),get(h2(2),'BaseLine')],'linestyle','none');
set(h2(2),'marker','>');
ylabel('Rx Diff');
legend([h1(1),h2(1)], 'w/o FFE', 'w/  FFE');
CB_autoScaleAxis({'x'});
saveas(gcf,[bitrate_str,filesep,'2_diff.png']);
%% DFE Design

end
