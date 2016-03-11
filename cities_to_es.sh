#!/bin/bash
sed ':a;N;$!ba;s/\n/\n{"index": {}}\n/g' city.list.json | sed 's/_id/internal_id/g' | sed '1 i\{"index": {}}' > city.list.es.json
