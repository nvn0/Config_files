let
  pkgs = import <nixpkgs> {};
in pkgs.mkShell {
  packages = [
    # Usando Python 3.11 com pacotes específicos e versões definidas
    (pkgs.python311.withPackages (python-pkgs: [
      #python-pkgs.pandas
      python-pkgs.pandas.overrideAttrs (oldAttrs: {
        version = "1.5.2"; # Versão específica do pandas
        src = pkgs.fetchPypi {
          pname = "pandas";
          version = "1.5.2";
          sha256 = "<sha256_hash>"; # Substitua pelo hash correto
        };
      }))
      python-pkgs.requests
    ]))
    
    # Outros pacotes
    pkgs.curl
    pkgs.jq
  ];
}
