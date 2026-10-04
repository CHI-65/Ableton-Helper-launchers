# Distance — master A/B (unlisted)

Private listening page for Cal. Unlisted, noindex — but this repo is PUBLIC,
so anyone with the URL can reach and download these files.

To take it down: delete this directory, commit, push.

    rm -rf distance-9a219700 && git commit -am "remove distance ab" && git push

- `index.html` — 60 s focus excerpt (1:05–2:05). Light; use this on iPad.
- `full.html`  — full length. Heavier; may reload on iPad.

The Brian Culbertson reference (63 s) is included on a 20-minute timer: the
player hides it once the clock runs out, and a scheduled job removes the two
reference .m4a files from this repo and pushes. See expire_reference.sh.
