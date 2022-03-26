clear all; 
close all; 
clc;

%% Sound!
fSampRecord = 1000; % Hz (RTC: 3400Hz, GSM:4kHz)
nBitsRecord = 16;
nChannelsRecord = 1;
deviceRecord = -1; %default
fSampPlay = 10000; % Hz
r = audiorecorder(fSampRecord, nBitsRecord, nChannelsRecord, deviceRecord);
record(r);
ch=sprintf(' <<< recording during 3s at frequency %6.0f Hz >>>', fSampRecord);
disp(ch)
pause(3); %3 secondes
stop(r); % stop recording
disp('-> playback !');
play(r); % sampling rate cannot be changed in the record
pause(4);
p = audioplayer(r); % create a player from the record
set(p, 'SampleRate', fSampPlay); % new sampling rate
ch=sprintf('-> playing at frequency %6.0f Hz', fSampPlay); 
disp(ch);