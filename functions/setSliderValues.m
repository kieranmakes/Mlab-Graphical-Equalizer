% Name: Kieran Williams
% Student Number: C1930510

function setSliderValues(app, values)
  app.MasterSlider.Value = values(1);
  app.s1.Value = values(2);
  app.s2.Value = values(3);
  app.s3.Value = values(4);
  app.s4.Value = values(5);
  app.s5.Value = values(6);
  app.s6.Value = values(7);
  app.s7.Value = values(8);
  app.s8.Value = values(9);
  app.s9.Value = values(10);
  app.s10.Value = values(11);
  calculateFilters(app);
end
