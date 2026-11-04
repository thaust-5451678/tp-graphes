while read ID ; do
	{ curl -L \
		-H "Accept: application/vnd.github+json" \
		-H "Authorization: Bearer $tok" \
		-H "X-GitHub-Api-Version: 2026-03-10" \
		--output artifact.zip \
		https://api.github.com/repos/thaust-5451678/tp-graphes/actions/artifacts/$ID/zip

	unzip artifact.zip
} done < liste-id.txt
