set -o pipefail
typst compile "$2.typ" "$3" \
	-f png \
	--deps - \
	--deps-format zero \
	--root .. \
| xargs -0 redo-ifchange
