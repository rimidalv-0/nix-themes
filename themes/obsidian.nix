{ walls, ... }:
rec {
  wall = walls + "/wall_0.jpg";
  wall_set = [ wall ];

  bg = rec {
    main = base00;
    alt = base08;
  };
  fg = rec {
    main = base07;
    alt = base15;
  };
  accent = rec {
    main = base01;
    alt = base09;
  };
  status = rec {
    info = base04;
    warn = base03;
    error = base01;
    succes = base02;
  };

  base00 = "#0A0A0F";
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
