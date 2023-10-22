{ rustPlatform, fetchCrate  }:

rustPlatform.buildRustPackage rec {
  pname = "bmark";
  version = "0.1.5";

  src = fetchCrate {
    inherit pname version;
    sha256 = "sha256-U1oJMQ+3pkjm1PSc98l2p+UKv2Z933xntl07TibbQ9A=";
  };

  cargoHash = "sha256-KzvfsNNvcXeHu4enyI8un+mx4dcu65F3qL4noxKBMEw=";
  cargoDepsName = pname;
}
