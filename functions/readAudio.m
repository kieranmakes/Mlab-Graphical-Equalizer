% Name: Kieran Williams
% Student Number: C1930510

function [player, y, Fs] = readAudio(fileName)
  % Reads an audio file and returns a player object along with 
  % the sampled data y and the sample rate Fs
  % the following functions can be used on the player object
  %   pause(player)
  %   resume(player)
  %   stop(player)
  % resample audio to a sample rate of 48000 if it is not already
  [y, Fs] = audioread(fileName);
  if Fs ~= 48000
    [P,Q] = rat(48e3/Fs);
    y = resample(y,P,Q)
    Fs = 48000;
  end
  player = audioplayer(y, Fs);
end

