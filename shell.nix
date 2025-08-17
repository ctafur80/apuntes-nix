



{ pkgs ? import <nixpkgs> {} }:

let
    project_name = "Documentación sobre la herramienta de entornos Nix";
    message = "Entorno para ${project_name}.";
in
    pkgs.mkShell {
        buildInputs = with pkgs; [
            pandoc
            gnumake

            # haskellPackages.pandoc-crossref
            # haskellPackages.pandoc-csv2table


            git
            bash-completion
            gawk
            gnugrep
            starship
        ];
        shellHook = ''
            echo ${message}
            eval "$(starship init bash)"
            alias ls="ls --color"
        '';
}





