tok=$(cat ../token.gh)
curl -L \
	-H "Accept: application/vnd.github+json" \
	-H "Authorization: Bearer $tok" \
	-H "X-GitHub-Api-Version: 2026-03-10" \
	https://api.github.com/repos/thaust-5451678/tp-graphes/actions/artifacts \
	> gh-artifacts.json

curl -L \
	-H "Accept: application/vnd.github+json" \
	-H "Authorization: Bearer $tok" \
	-H "X-GitHub-Api-Version: 2026-03-10" \
	--output artifact.zip \
	https://api.github.com/repos/thaust-5451678/tp-graphes/actions/artifacts/11882572366/zip

unzip artifact.zip
