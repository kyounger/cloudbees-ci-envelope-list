# basically, my notes, use if needed

These generate equivalent structure for dependencies. One for envelope, one for not.

```
jq '[.plugins["ec2"].dependencies[] | {(.name): .version}] | reduce .[] as $item ({}; . + $item)' temp.json
```

```
jq '.envelope.plugins["ec2"].dependencies' temp.json
```
