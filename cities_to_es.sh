#!/bin/bash
wget http://bulk.openweathermap.org/sample/city.list.json.gz && gunzip city.list.json.gz
sed ':a;N;$!ba;s/\n/\n{"index": {}}\n/g' city.list.json | sed 's/_id/internal_id/g' | sed '1 i\{"index": {}}' > city.list.es.json
