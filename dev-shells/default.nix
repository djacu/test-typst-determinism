inputs:
inputs.self.library.defaultSystems (
  system:
  let
    pkgs = inputs.self.legacyPackages.${system};
  in
  {

    default = pkgs.callPackage (
      {
        mkShell,
        typst,
      }:
      mkShell {

        packages = [
          typst
        ];

      }
    ) { };

  }
)
