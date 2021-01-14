## `cap-plugin-list.sh`

Set the envelope and version and it will return formatted list of plugins that are in CAP for that release. Includes an comment that shows how to convert this to a csv.

### Follow-up queries

Once the shell script is run, the local `temp.json` file can be used subsequently with jq. These are my notes for adhoc queries, basically.

These generate equivalent structure for dependencies. One for envelope plugins, one for not.

```
jq '[.plugins["ec2"].dependencies[] | {(.name): .version}] | reduce .[] as $item ({}; . + $item)' temp.json
```

```
jq '.envelope.plugins["ec2"].dependencies' temp.json
```
