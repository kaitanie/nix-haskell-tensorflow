pkgs: self: super:

pkgs.haskellPackages.mkDerivation {
  pname = "tensorflow-proto";
  version = "0.1.0.0";
  sha256 = "06k87dvpsf8pnbb1qq5gjxpjc2sra95y1bwmsnpmlg1qn0ppi5mn";
  setupHaskellDepends = [ pkgs.haskellPackages.base pkgs.haskellPackages.Cabal pkgs.haskellPackages.proto-lens-protoc ];
  libraryHaskellDepends = [ pkgs.haskellPackages.base pkgs.haskellPackages.proto-lens pkgs.haskellPackages.proto-lens-protoc ];
  librarySystemDepends = [ pkgs.protobuf3_2 ];
  libraryToolDepends = [ pkgs.protobuf3_2 ];
  homepage = "https://github.com/tensorflow/haskell#readme";
  description = "TensorFlow protocol buffers";
  license = pkgs.stdenv.lib.licenses.asl20;
}
