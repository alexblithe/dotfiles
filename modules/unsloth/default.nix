{ lib, appimageTools, fetchurl }:
let
  version = "v0.1.913-beta";
  pname = "unsloth-desktop";

  src = fetchurl {
    url = "https://github.com/unslothai/unsloth/releases/download/${version}/Unsloth-Desktop-Linux.AppImage";
    hash = "sha256:94be4a21a10ef80a7dc2fcfb569a0a13cee1f453d08cc5912e7b4abd0ae5ec6e";
  };

  appimageContents = appimageTools.extract { inherit pname version src; };
in
appimageTools.wrapType2 rec {
  inherit pname version src;

  extraInstallCommands = ''
    desktop_file="$(find ${appimageContents} -type f -name '*.desktop' -print -quit)"
    test -n "$desktop_file"
    install -Dm444 "$desktop_file" "$out/share/applications/${pname}.desktop"
    cp -r ${appimageContents}/usr/share/icons "$out/share/"
    substituteInPlace "$out/share/applications/${pname}.desktop" \
      --replace-fail 'Exec=unsloth-studio' 'Exec=${meta.mainProgram}'
  '';

  extraPkgs = pkgs: with pkgs; [
    nghttp2
    libgpg-error
    # Unsloth accepts system Node only with npm >= 11; Node 22 ships npm 10.
    nodejs_24
    # Studio requests CPython 3.13; uv can use this instead of downloading its own interpreter.
    python313
    uv
  ];

  meta = {
    mainProgram = pname;
    description = "Unsloth Desktop for linux";
    homepage = "https://github.com/unslothai/unsloth";
    downloadPage = "https://github.com/unslothai/unsloth/releases";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ alex ];
    platforms = [ "x86_64-linux" ];
  };
}
