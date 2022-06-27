% Name: Kieran Williams
% Student Number: C1930510

function savePreset(app)
  vol = app.MasterSlider.Value();
  v1 = app.s1.Value();
  v2 = app.s2.Value();
  v3 = app.s3.Value();
  v4 = app.s4.Value();
  v5 = app.s5.Value();
  v6 = app.s6.Value();
  v7 = app.s7.Value();
  v8 = app.s8.Value();
  v9 = app.s9.Value();
  v10 = app.s10.Value();
  values = [vol, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10];
  try
    [file, path] = uiputfile({'*.dat;', 'dat File: (*.dat)'}, 'Save Preset');
    pathWithFileName = strcat(path, file);
    writematrix(values, pathWithFileName);
  catch e
    disp(e);
    end          
end
