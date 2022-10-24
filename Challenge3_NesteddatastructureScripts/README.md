object = {“a”:{“b”:{“c”:”d”}}}
echo $object | jq -r '.[] | ( .a | to_entries | .b | to_entries | .c | to_entries | .[] | [ .key, .value ])

Nested data structure, is looks like nested array or nested json formated data.
for retriving the values apart from elixir, we are able to try few laungaes scripts.
found few refernces in Shell Jq, Python dict, Java scripts, Power shell

