{ walls, ... }:
rec {
  wall = walls + "/wall_0.jpg";
  wall_set = [ wall ];

  bg.deepest = "#000000";
  bg.deep = "#0D0D0D";
  bg.base = "#1A1A1A";
  bg.high = "#222222";
  bg.highest = "#2F2F2F";

  fg.deepest = "#416465";
  fg.deep = "#4E6962";
  fg.base = "#638687";
  fg.high = "#749798";
  fg.highest = "#85A8A9";

  accent = rec {
    deepest = "#6F3E09";
    deep = "#A95C0F";
    base = "#DE7B13";
    high = "#F3AA3D";
    highest = "#FFD27E";
  };
  status = rec {
    info = {
      base = fg.base;
      dim = fg.deep;
    };
    warn = {
      base = accent.base;
      dim = accent.deep;
    };
    error = {
      base = "#AE1C0C";
      dim = "#721605";
    };
    succes = {
      base = "#BBAA50";
      dim = "#665E2C";
    };
  };

  base00 = "#000000";
  base08 = "#07070B";

  base01 = "#bd4a40";
  base09 = "#862D34";

  base02 = "#7B8F62";
  base10 = "#667652";

  base03 = "#A6865E";
  base11 = "#8F724F";

  base04 = "#3F5574";
  base12 = "#2E405D";

  base05 = "#6B4B78";
  base13 = "#52375E";

  base06 = "#597784";
  base14 = "#455B67";

  base07 = "#C2C7D0";
  base15 = "#E3E7EE";
}
