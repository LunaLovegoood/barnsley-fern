public final int a = 0;
public final int b = 1;
public final int c = 2;
public final int d = 3;
public final int e = 4;
public final int f = 5;
public final int p = 6; // probability


// Black Spleenwort fern
public float blackSpleenwortFern[][] = {
  //    a,     b,     c,     d,    e,     f,    p
  {     0,     0,     0,  0.16,    0,     0, 0.01}, // Stem
  {  0.85,  0.04, -0.04,  0.85,    0,   1.6, 0.86}, // Successively smaller leaflets
  {  0.20, -0.26,  0.23,  0.22,    0,   1.6, 0.93}, // Largest left-hand leaflet
  { -0.15,  0.28,  0.26,  0.24,    0,  0.44,  1.0}  // Largest right-hand leaflet
};

// Thelypteridaceae fern
public float thelypteridaceaeFern[][] = {
  //    a,     b,      c,     d,      e,     f,    p
  {     0,     0,      0,  0.25,      0,  -0.4, 0.02}, // Stem
  {  0.95, 0.005, -0.005,  0.93, -0.002,   0.5, 0.86}, // Successively smaller leaflets
  { 0.035,  -0.2,   0.16,  0.04,  -0.09,  0.02, 0.93}, // Largest left-hand leaflet
  { -0.04,   0.2,   0.16,  0.04,  0.083,  0.12,  1.0}  // Largest right-hand leaflet
};
