AperiodicFcn = @( s, T, K )(K ./ (T .* s.^2 + s));

TransFcn = @(t, T, K)(K .* (T .* exp(-t ./ T) - 3));
ImpFcn = @(t, T, K)(K .* (1 - exp(-t ./ T)));

Pw = @(w, T, K)((- K .* T) ./ (T .^ 2 .* w .^ 2 + 1));
Qw = @(w, T, K)((- K) ./ (T .^ 2 .* w .^ 2 + 1));

AmpW = @(w, T, K)( K ./ (w .* (T .^ 2 .* w .^ 2 + 1)) .* sqrt(1 + T .^ 2 .* w .^ 2) );
PhiW = @(w, T, K)( atan(1 ./ (w .* T)) );


T = 10;
K = 1;

x = 0.1 : 0.1 : 50;
xLen = size(x, 2);



trans = AperiodicFcn(x, T, K);
amp = Pw(x, T, K);
ph = Qw(x, T, K);
af = AmpW(x, T, K);
pf = PhiW(x, T, K);
p = TransFcn(x, T, K);
imp = ImpFcn(x, T, K);


subplot(4,2,1); plot(x, trans); title('Transmission - w(p)');
subplot(4,2,2); plot(amp, ph); title('AFCH - W(iw)');

%%TODO : Must be radial.
subplot(4,2,3); plot(x, amp); title('Amplitude - P(w)');
subplot(4,2,4); plot(x, ph); title('Phase - Q(w)');

subplot(4,2,5); plot(x, af); title('Amplitude-fraq - A(w)');
subplot(4,2,6); plot(x, pf); title('Phase-freq Fi(w)');

subplot(4,2,7); plot(x, imp); title('Impulse - h(t)');
subplot(4,2,8); plot(x, p); title('Passing - w(t)');

%apf = AmpPhaseFreq(x, T, K);

