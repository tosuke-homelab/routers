{
  description = "Management tools for routers";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-23.05";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils, ... }: 
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        ruby = pkgs.ruby_3_1;

        gems = pkgs.bundlerEnv {
          name = "routers-hocho";
          inherit ruby;
          gemdir = ./.;
        };
      in
      {
        devShell = pkgs.mkShell {
          buildInputs = with pkgs; [
            ruby
            bundix
            gems
          ];
        };
      }
    );
}
