VERSION=2.277.4.3
ENVELOPE=envelope-core-mm
curl -L "https://jenkins-updates.cloudbees.com/update-center/$ENVELOPE/update-center.json?version=$VERSION" | sed '1d' | sed '$d' > temp.json
jq '.plugins[
  "caffeine-api",
  "jquery"
] | [.name,.version]' temp.json
