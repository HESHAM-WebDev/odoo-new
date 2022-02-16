let
  nixpkgsPin = {
    url = https://github.com/nixos/nixpkgs/archive/9cd64b4b89eef37d02f2a1a3d3b001c7bb05dd5a.tar.gz;
    sha256 = "sha256:0baj66vmvry5wz2lfh1cgh7hvh7973pzqga7mxdxyjf2drpld332";
  };
  pkgs = import (builtins.fetchTarball nixpkgsPin) {};
  node = pkgs.nodejs-14_x;
  cypress = pkgs.cypress;
  python = pkgs.python39Full;
  yapf = pkgs.python39Packages.yapf;
  prettier = pkgs.nodePackages.prettier;
in
  pkgs.stdenv.mkDerivation {
    name = "task1";
    buildInputs = [
      node
      cypress
      python
      yapf
      prettier
    ];
    shellHook = ''
      export CYPRESS_INSTALL_BINARY=0
      export CYPRESS_RUN_BINARY=$(which Cypress)
    '';
  }
