self: super:

super.stdenv.mkDerivation {
   name = "tensorflow-c";
   version = "1.1.0";
   buildDepends = [ super.pkgs.gcc ];
   src = super.pkgs.fetchurl {
       url = "https://storage.googleapis.com/tensorflow/libtensorflow/libtensorflow-cpu-linux-x86_64-1.1.0.tar.gz";
       sha256 = "03d1bd5nl4b8j0jy2jprhb5spq23vk9gnvx818q9csp9zc54fanw";
   };
   buildCommand = ''
       echo "Installing tensorflow..."
       . $stdenv/setup
       mkdir -pv $out
       tar -C $out -xzf $src
       chmod u+w $out/lib/libtensorflow.so
       ldd $out/lib/libtensorflow.so
       ls -lah $out/lib
       echo "Rpath = ${super.stdenv.cc.cc.lib}"
       patchelf --set-rpath "${super.stdenv.cc.cc.lib}/lib:${super.stdenv.cc.cc.lib}/lib64" $out/lib/libtensorflow.so
       ldd $out/lib/libtensorflow.so
     '';
}

