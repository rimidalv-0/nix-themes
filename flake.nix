{
  description = "A very basic flake";

  inputs = {
    walls.url = ./wall;
    walls.flake = false;
  };

  outputs =
    { walls, ... }:
    let

      themeDir = ./themes;
      themeNames = builtins.readDir themeDir;

      themes = builtins.listToAttrs (
        builtins.map (name: {
          name = builtins.replaceStrings [ ".nix" ] [ "" ] name;
          value = import "${themeDir}/${name}" { inherit walls; };
        }) (builtins.attrNames themeNames)
      );
    in
    {
      themes = themes;
    };
}
