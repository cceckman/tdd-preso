#!/usr/bin/env python3

import sys

with open("index.tmpl.html") as f:
	templ = f.read()
with open("content.md") as f:
	content = f.read()

full = templ.replace("REPLACE", content)

sys.stdout.write(full)


