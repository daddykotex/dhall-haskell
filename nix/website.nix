{ coreutils, dhall, haskell, jQuery, logo, nodePackages, npm, runCommand
, twitterBootstrap
}:

runCommand "try-dhall" {} ''
  ${coreutils}/bin/mkdir $out
  ${coreutils}/bin/mkdir $out/{css,img,js}
  ${coreutils}/bin/cp ${../dhall-try/index.html} $out/index.html
  ${coreutils}/bin/ln --symbolic ${nodePackages.js-yaml}/lib/node_modules/js-yaml/dist/js-yaml.min.js $out/js
  ${coreutils}/bin/ln --symbolic ${jQuery} $out/js/jquery.min.js
  ${coreutils}/bin/ln --symbolic ${twitterBootstrap}/js/bootstrap.min.js $out/js
  ${coreutils}/bin/ln --symbolic ${twitterBootstrap}/js/bootstrap.min.js.map $out/js
  ${coreutils}/bin/ln --symbolic ${twitterBootstrap}/css/bootstrap.min.css $out/css
  ${coreutils}/bin/ln --symbolic ${npm.codemirror}/lib/node_modules/codemirror/lib/codemirror.js $out/js
  ${coreutils}/bin/ln --symbolic ${npm.codemirror}/lib/node_modules/codemirror/mode/haskell/haskell.js $out/js
  ${coreutils}/bin/ln --symbolic ${npm.codemirror}/lib/node_modules/codemirror/mode/javascript/javascript.js $out/js
  ${coreutils}/bin/ln --symbolic ${npm.codemirror}/lib/node_modules/codemirror/mode/yaml/yaml.js $out/js
  ${coreutils}/bin/ln --symbolic ${npm.codemirror}/lib/node_modules/codemirror/lib/codemirror.css $out/css
  ${coreutils}/bin/ln --symbolic ${haskell.packages.ghcjs.dhall-try}/bin/dhall-try.jsexe/all.min.js $out/js
  ${coreutils}/bin/ln --symbolic ${logo.bash} $out/img/bash-logo.png
  ${coreutils}/bin/ln --symbolic ${logo.clojure} $out/img/clojure-logo.svg
  ${coreutils}/bin/ln --symbolic ${logo.ruby} $out/img/ruby-logo.svg
  ${coreutils}/bin/ln --symbolic ${logo.discourse} $out/img/discourse-logo.svg
  ${coreutils}/bin/ln --symbolic ${logo.dhallLarge} $out/img/dhall-large-logo.png
  ${coreutils}/bin/ln --symbolic ${logo.dhallSmall} $out/img/dhall-small-logo.png
  ${coreutils}/bin/ln --symbolic ${logo.github}/PNG/GitHub-Mark-32px.png $out/img/github-logo.png
  ${coreutils}/bin/ln --symbolic ${logo.haskell} $out/img/haskell-logo.png
  ${coreutils}/bin/ln --symbolic ${logo.kubernetes} $out/img/kubernetes-logo.svg
  ${coreutils}/bin/ln --symbolic ${logo.json} $out/img/json-logo.svg
  ${coreutils}/bin/ln --symbolic ${logo.nix} $out/img/nix-logo.png
  ${coreutils}/bin/ln --symbolic ${logo.stackOverflow} $out/img/stack-overflow-logo.svg
  ${coreutils}/bin/ln --symbolic '${logo.twitter}/Twitter Logos/Twitter Logos/Twitter_Logo_Blue/Twitter_Logo_Blue.svg' $out/img/twitter-logo.svg
  ${coreutils}/bin/ln --symbolic ${logo.xml} $out/img/xml-logo.svg
  ${coreutils}/bin/ln --symbolic ${logo.yaml} $out/img/yaml-logo.png
  ${coreutils}/bin/mkdir $out/nix-support
  ${coreutils}/bin/echo "doc none $out/index.html" > $out/nix-support/hydra-build-products
''
