#!/bin/bash
curl -s https://prod.trackmania.core.nadeo.online/api/routes | python3 -m json.tool > prod.json
curl -s https://uat.trackmania-next-dev.core.nadeo.online/api/routes | python3 -m json.tool > uat.json
curl -s https://lt.trackmania-next-dev.core.nadeo.online/api/routes | python3 -m json.tool > lt.json
git add *.json
git commit -m "$(date)"
git push origin master
