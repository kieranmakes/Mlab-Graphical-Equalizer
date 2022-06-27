% Name: Kieran Williams
% Student Number: C1930510

function resetSliderValues(app)
  app.MasterSlider.Value = 50;
  app.s1.Value = 0;
  app.s2.Value = 0;
  app.s3.Value = 0;
  app.s4.Value = 0;
  app.s5.Value = 0;
  app.s6.Value = 0;
  app.s7.Value = 0;
  app.s8.Value = 0;
  app.s9.Value = 0;
  app.s10.Value = 0;
  calculateFilters(app);
end
