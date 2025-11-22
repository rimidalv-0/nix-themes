{
  description = "A very basic flake";

  inputs = {
  };

  outputs =
    { ... }:
    let
      themeDir = ./themes;
      entries = builtins.readDir themeDir;
      themeFileNames = builtins.filter (
        name:
        let
          t = entries.${name}.type;
        in
        t == "regular" && builtins.match ".*\\.nix" name != null
      ) (builtins.attrNames entries);

      themes = builtins.listToAttrs (
        builtins.map (name: {
          name = builtins.replaceStrings [ ".nix" ] [ "" ] name;
          value = import "${themeDir}/${name}";
        }) themeFileNames
      );

    in
    {
      themes = themes;
    };
}
