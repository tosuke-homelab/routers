{
  ansi = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "14ims9zfal4gs2wpx2m5rd8zsrl2k794d359shkrsgg3fhr2a22l";
      type = "gem";
    };
    version = "1.5.0";
  };
  bcrypt_pbkdf = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0ndamfaivnkhc6hy0yqyk2gkwr6f3bz6216lh74hsiiyk3axz445";
      type = "gem";
    };
    version = "1.1.0";
  };
  ed25519 = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0zb2dr2ihb1qiknn5iaj1ha1w9p7lj9yq5waasndlfadz225ajji";
      type = "gem";
    };
    version = "1.3.0";
  };
  hashie = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1nh3arcrbz1rc1cr59qm53sdhqm137b258y8rcb4cvd3y98lwv4x";
      type = "gem";
    };
    version = "5.0.0";
  };
  hocho = {
    dependencies = ["hashie" "itamae" "net-ssh" "thor"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0af7fwj3zax42xh4129z2zjzaycbr5x1hd9hrfxmzfkpykb000b8";
      type = "gem";
    };
    version = "0.3.8";
  };
  itamae = {
    dependencies = ["ansi" "hashie" "schash" "specinfra" "thor"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1zhx0cknipkjqp33qdxjlv7lcybgmh1jv9npp55vxaazd8cyfylx";
      type = "gem";
    };
    version = "1.14.1";
  };
  net-scp = {
    dependencies = ["net-ssh"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1si2nq9l6jy5n2zw1q59a5gaji7v9vhy8qx08h4fg368906ysbdk";
      type = "gem";
    };
    version = "4.0.0";
  };
  net-ssh = {
    groups = ["default"];
    platforms = [];
    source = {
      fetchSubmodules = false;
      rev = "5426014a055e4e802ad24025129561a1aca56134";
      sha256 = "1vz313hzmm2w9cp339mxsl1xs72hwlgn2gmi44r16h5f9dbi6d54";
      type = "git";
      url = "https://github.com/tosuke-lab/net-ssh.git";
    };
    version = "7.2.0.beta1";
  };
  net-telnet = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "13qxznpwmc3hs51b76wqx2w29r158gzzh8719kv2gpi56844c8fx";
      type = "gem";
    };
    version = "0.1.1";
  };
  schash = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0ia62xi56pkxy4y6wg3v5kwabjncyh3g78nqll4fs34zhdf7v8ad";
      type = "gem";
    };
    version = "0.1.2";
  };
  sfl = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1qm4hvhq9pszi9zs1cl9qgwx1n4wxq0af0hq9sbf6qihqd8rwwwr";
      type = "gem";
    };
    version = "2.3";
  };
  specinfra = {
    dependencies = ["net-scp" "net-ssh" "net-telnet" "sfl"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1pmj161k11hbj9ak0p8j934ddfr25wvy60n23ngwl15x8sb6sa45";
      type = "gem";
    };
    version = "2.85.1";
  };
  thor = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0k7j2wn14h1pl4smibasw0bp66kg626drxb59z7rzflch99cd4rg";
      type = "gem";
    };
    version = "1.2.2";
  };
}
