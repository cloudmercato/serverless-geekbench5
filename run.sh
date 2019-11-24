#!/bin/bash
iterations=${iterations:-3}
for i in $(seq 1 $iterations) ; do
    ./geekbench5 --no-upload --export-json output-$i.json
    cb-client geekbench5 < output-$i.json
done
