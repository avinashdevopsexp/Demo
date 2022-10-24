object = {“a”:{“b”:{“c”:”d”}}}
echo $object | jq -r '.[] | ( .a | to_entries | .b | to_entries | .c | to_entries | .[] | [ .key, .value ])