for i in example-*.typ; do
	printf '%s.png\0' "${i%.*}"
done | xargs -0 redo-ifchange
