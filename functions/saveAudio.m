% Name: Kieran Williams
% Student Number: C1930510

function saveAudio(app, filePath)
  audiowrite(filePath, app.y, app.Fs);
end
