VERSION=2.235.1.2
ENVELOPE=envelope-core-mm
curl -L "https://jenkins-updates.cloudbees.com/update-center/$ENVELOPE/update-center.json?version=$VERSION" | sed '1d' | sed '$d' > temp.json
jq '.envelope.plugins | to_entries | [.[] | [.key, .value.name, .value.tier, .value.version]]' temp.json
# use this if you need to generate a csv:
# jq -r '.envelope.plugins | to_entries | [.[] | [.key, .value.name, .value.tier, .value.version]][] | @csv' temp.json > "cap-plugin-list_${VERSION}_${ENVELOPE}.csv"
