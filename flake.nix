{
  description = "Management tools for routers";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-23.05";
    flake-utils.url = "github:numtide/flake-utils";
    treefmt-nix.url = "github:numtide/treefmt-nix";
  };

  outputs = { self, nixpkgs, flake-utils, treefmt-nix, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        # https://github.com/numtide/treefmt/pull/231
        treefmt-overlay = final: prev:
          {
            treefmt = prev.treefmt.overrideAttrs (old: rec {
              version = "8e52869";

              src = prev.fetchFromGitHub {
                owner = "numtide";
                repo = "treefmt";
                rev = "8e52869b0efcf8b984a51a14161d67de03e2f082";
                hash = "sha256-aEBy3BQPMPPv1U/XPQ3KUNn61ljWGVh8BQYfOrAd5Mo=";
              };

              cargoDeps = old.cargoDeps.overrideAttrs (_: {
                inherit src;
                outputHash = "sha256-7vuonfWR0iPA8bZ8D9kJIPrnmab6+3nnF5rmcliEphY=";
              });
            });
          };
      in
      let
        pkgs = nixpkgs.legacyPackages.${system}.extend treefmt-overlay;
        ruby = pkgs.ruby_3_1;

        gems = pkgs.bundlerEnv {
          name = "routers-hocho";
          inherit ruby;
          gemdir = ./.;
        };

        treefmt = treefmt-nix.lib.mkWrapper pkgs {
          projectRootFile = "flake.nix";
          programs.nixpkgs-fmt.enable = true;
          programs.rufo.enable = true;
        };
      in
      {
        devShell = pkgs.mkShell {
          buildInputs = with pkgs; [
            ruby
            bundix
            gems
            treefmt
          ];
        };
        formatter = treefmt;
      }
    );
}
