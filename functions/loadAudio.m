% Name: Kieran Williams
% Student Number: C1930510

function loadAudio(app, filePath)
  app.EditField.Value = filePath;
  [player, y, Fs] = readAudio(filePath);
  app.orig_y = y; app.orig_Fs = Fs;
  app.player = player; app.y = y; app.Fs = Fs;
  % calculateFilters
  % displayOrigAudioGraph
  graphAudio(app.UIAxes, app.orig_y);
  calculateFilters(app);
end
