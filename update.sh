#!/bin/bash
curl -s https://prod.trackmania.core.nadeo.online/api/routes | python3 -m json.tool > prod.json
curl -s https://uat.trackmania-next-dev.core.nadeo.online/api/routes | python3 -m json.tool > uat.json
curl -s https://cert.trackmania-next-dev.core.nadeo.online/api/routes | python3 -m json.tool > cert.json

if [ -s prod.json ]; then
	git add prod.json
fi

if [ -s uat.json ]; then
	git add uat.json
fi

if [ -s cert.json ]; then
	git add cert.json
fi

git commit -m "$(date)"
git push origin master
