{...}:

{
  filesystems.nfs.server = {
    enable = true;
    exports = ''
        /export luna(rw,nohide,no_subtree_check,fsid=0)
      '';
    lockdPort = 4001;
    mountdPort = 4002;
    statdPort = 4000;
    extraNfsdConfig = '''';
  };
  networking.firewall.interfaces."tailscale0" = {
    allowedTCPPorts = [ 111 2049 4000 4001 4002 20048];
    allowedUDPPorts = [ 111 2049 4000 4001 4002 20048];
  };
}