---
name: cal-context
description: Cal's account-wide context — machines (CHI music = main/session Mac), Chrome browser deviceIds (never ask Cal to pick), accessibility rules (audio-first, do everything yourself), and where the Sample Loader pipeline lives. Load at the start of any session that touches browsers, machines, or the music pipeline.
---

# Cal — account context

- **Accessibility:** Cal is visually impaired. He types and reads (audio tools don't work for him currently):
  short, plain, well-structured text; large clear controls; do everything yourself — only fall back to Cal for credentials/payments/OS approvals.
- **Machines:** Main Mac = **CHI music** (username `CHItest`, ComputerName "MacBook Pro (2)") — Ableton,
  the pipeline, all tools live here. Other Macs incl. "CHI Piano" exist; NONE are test machines.
- **Chrome extension deviceIds — select by ID, NEVER quiz Cal:**
  - CHI music (local to main Mac): `b6e498cc-8f1c-4eaf-b9bb-3d92fe0c5290`
  - Other Macs: `7fa0883a-b676-4564-a92f-f085e976e05c`, `a3002c9e-e3df-4012-851a-8e98d743adad`
  - Display names reshuffle; `isLocal` is unreliable. Verify locality via a localhost probe
    (serve 127.0.0.1, navigate the browser to it) or a painted label page.
- **Sample Loader:** Home-Screen app https://chi-65.github.io/Ableton-Helper-launchers/app/ ;
  artifact twin https://claude.ai/code/artifact/d1258439-1207-4f94-a7bf-612f4265b370 .
  Pipeline files in Dropbox `/SampleLoader/` (stemsep, .keys, sessions, built, CONTEXT.md).
  Code: github CHI-65/Ableton-Helper (tools/README.md; cloud_pipeline.py = Mac-free runner).
