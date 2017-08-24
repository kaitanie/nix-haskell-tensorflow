pkgs: self: super:

{
    # DESIGN: no overrides needed any more, but here's the pattern.
    #
    # haskakafka = (import ./haskakafka.nix) pkgs self super;

    tensorflow-proto = (import ./tensorflow-proto.nix) pkgs self super;
    tensorflow = (import ./tensorflow.nix) pkgs self super;

    #tensorflow-proto = pkgs.callPackage ./tensorflow-proto.nix {
    #                      mkDerivation = pkgs.mkDerivation;
    #                      base = pkgs.base };
}
