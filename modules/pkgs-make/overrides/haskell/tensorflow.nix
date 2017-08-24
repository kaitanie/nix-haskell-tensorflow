pkgs: self: super:

pkgs.haskellPackages.mkDerivation {
  pname = "tensorflow";
  version = "0.1.0.2";
  sha256 = "0l1dx5xl82hh0kjhdvshxc40gpbsjd8vrn9f5rxy9gd0rsc8vc0k";
  libraryHaskellDepends = [
    pkgs.haskellPackages.async
    pkgs.haskellPackages.attoparsec pkgs.haskellPackages.base pkgs.haskellPackages.bytestring pkgs.haskellPackages.containers pkgs.haskellPackages.data-default pkgs.haskellPackages.exceptions
    pkgs.haskellPackages.fgl pkgs.haskellPackages.lens-family pkgs.haskellPackages.mainland-pretty pkgs.haskellPackages.mtl pkgs.haskellPackages.proto-lens pkgs.haskellPackages.proto-lens-protoc
    pkgs.haskellPackages.semigroups pkgs.haskellPackages.split pkgs.haskellPackages.temporary pkgs.haskellPackages.tensorflow-proto pkgs.haskellPackages.text pkgs.haskellPackages.transformers
    pkgs.haskellPackages.vector
  ];
  librarySystemDepends = [ pkgs.tensorflow-c pkgs.gcc ];
  buildDepends = [ pkgs.tensorflow-c ];
  libraryToolDepends = [ pkgs.haskellPackages.c2hs pkgs.gcc ];
  testHaskellDepends = [
    pkgs.haskellPackages.attoparsec pkgs.haskellPackages.base pkgs.haskellPackages.bytestring pkgs.haskellPackages.HUnit pkgs.haskellPackages.lens-family pkgs.haskellPackages.proto-lens
    pkgs.haskellPackages.tensorflow-proto pkgs.haskellPackages.test-framework pkgs.haskellPackages.test-framework-hunit
    pkgs.haskellPackages.test-framework-quickcheck2
  ];
  homepage = "https://github.com/tensorflow/haskell#readme";
  description = "TensorFlow bindings";
  license = pkgs.stdenv.lib.licenses.asl20;
}
