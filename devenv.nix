{ pkgs, ... }:

{
  env.GREET = "veshell";

  packages = [ pkgs.git pkgs.cargo pkgs.libxkbcommon pkgs.wayland ];

  enterShell = ''
    echo 'git repo state'
    git status
  '';

  languages.rust.enable = true;

  devcontainer.enable = true;

  pre-commit.hooks.shellcheck.enable = true;

}
