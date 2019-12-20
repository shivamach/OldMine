%square wave 5 v, 20hz 60% dutycyle
t = 0:0.001:1.59;
y = 5*square(20*t,60);
plot(t,y,'r')
hold on
grid on
%sawtooth waveform
x = sawtooth(20*t,1);
plot(t,x,'k')
hold off
%to plot five cycles of 20hz 0.05*5 = 0.25 ???
