% Name: Kieran Williams
% Student Number: C1930510

function calculateFilters(app)

  if isplaying(app.player) 
    stop(app.player)
  end

  app.y = app.orig_y;
  y = app.orig_y;
  Fs = app.orig_Fs;
  vol = app.MasterSlider;
  % calculate volume
  volume = (vol.Value * 4) / 100;

  if app.WahWahButton.Value == 1 
    wahwah(app);
    app.y = app.y * volume * 0.5;
  else
     % lowpass filter
      g0 = app.s1.Value;
      fcb = 200;
      Q = 3;
      type = 'Base_Shelf';
      [b, a] = shelving(g0, fcb, Fs, Q, type);
      y1 = filter(b,a,y);
    
      % bandpass1
      g1 = app.s2.Value;
      Fc = 300;
      Fb = 200;
      Q = Fb / Fc;
      [b, a] = peaking(g1, Fc, Q, Fs);
      app.player = audioplayer(app.orig_y, app.orig_Fs);
      y2 = filter(b, a, y);
      
      % bandpass2
      g2 = app.s3.Value;
      Fc = 600;
      Fb = 400;
      Q = Fb / Fc;
      [b, a] = peaking(g2, Fc, Q, Fs);
      y3 = filter(b, a, y);
    
      % bandpass3
      g3 = app.s4.Value;
      Fc = 1000;
                app.player = audioplayer(app.orig_y, app.orig_Fs);
      Fb = 400;
      Q = Fb / Fc;
      [b, a] = peaking(g3, Fc, Q, Fs);
      y4 = filter(b, a, y);
    
      % bandpass4
      g4 = app.s5.Value;
      Fc = 1500;
      Fb = 600;
      Q = Fb / Fc;
      [b, a] = peaking(g4, Fc, Q, Fs);
      y5 = filter(b, a, y);
    
      % bandpass5
      g5 = app.s6.Value;
      Fc = 2400;
      Fb = 600;
      Q = Fb / Fc;
      [b, a] = peaking(g5, Fc, Q, Fs);
      y6 = filter(b, a, y);
    
      % bandpass6
      g6 = app.s7.Value;
      Fc = 4000;
      Fb = 2000;
      Q = Fb / Fc;
      [b, a] = peaking(g6, Fc, Q, Fs);
      y7 = filter(b, a, y);
    
    
      % bandpass7
      g7 = app.s8.Value;
      Fc = 6000;
      Fb = 2000;
      Q = Fb / Fc;
      [b, a] = peaking(g7, Fc, Q, Fs);
      y8 = filter(b, a, y);
    
      % bandpass8
      g8 = app.s9.Value;
      Fc = 9500;
      Fb = 5000;
      Q = Fb / Fc;
      [b, a] = peaking(g8, Fc, Q, Fs);
      y9 = filter(b, a, y);
    
    
      % highpass 
      g9 = app.s10.Value;
      fct = 12000;
      Q = 1;
      type = 'Treble_Shelf';
      [b a] = shelving(g9, fct, Fs, Q, type);
      y10 = filter(b,a,y);
    
    
      app.y = y1 + y2 + y3 + y4 + y5 + y6 + y7 + y8 + y9 + y10;
      app.y = app.y * volume * 0.05;

  end

 
  
  


  graphAudio(app.UIAxes_2, app.y);
  app.player = audioplayer(app.y, app.Fs);
end
