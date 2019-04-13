README.md: docs/isodd.mdoc
	mandoc $< -T markdown > $@
