function loadPreset(app, filePath)
  app.EditField_2.Value = filePath;
  data = importdata(filePath);
  % change appropriate slider value to its respective value in the data matrix
  setSliderValues(app, data);
end
