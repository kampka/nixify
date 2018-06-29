let
    nixpkgs = import <nixpkgs> {
        config.allowUnfree = false;
        overlays = [ ];
    };
in
    with nixpkgs;
    stdenv.mkDerivation rec {
        name = "{{NIXIFY_ENV_NAME}}";
        env = buildEnv { name = name; paths = buildInputs; };
        buildInputs = [
            # List packages that should be on the path
            # You can search for package names using nix-env -qaP | grep <name>
            {{NIXIFY_BUILD_INPUTS}}
        ];

        shellHook = ''
          export NIX_SHELL_ENV=${name}

          {{NIXIFY_SHELL_HOOK}}
        '';
    }
