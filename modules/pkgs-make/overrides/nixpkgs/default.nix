self: super:

{
#    rdkafka = (import ./rdkafka.nix) self super;

    tensorflow-c = (import ./tensorflow-c.nix) self super;

}
