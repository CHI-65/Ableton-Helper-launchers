---
name: browser-self-check
description: Identify which machine this session runs on and which Chrome the extension is driving — WITHOUT asking the user to identify browsers. Use whenever multiple Chrome extensions are connected, before driving any browser, or when screen activity might appear on the wrong computer.
---

# Browser & machine self-check

Sessions run on exactly ONE machine; the Chrome extension connects account-wide, so the browser you
drive may be on a DIFFERENT computer whose screen the user can see. Never assume; never quiz the user.

**Known deviceIds (Cal's account):** CHI music (main Mac) = `b6e498cc-8f1c-4eaf-b9bb-3d92fe0c5290`;
CHI Piano = `a3002c9e-e3df-4012-851a-8e98d743adad`; CHI Bus = `7fa0883a-b676-4564-a92f-f085e976e05c`.
Select by deviceId. Display names ("Browser 1/2/3") reshuffle between connections; the `isLocal`
flag has been observed wrong — trust neither.

**Technique 1 — localhost probe (is this browser on MY machine?):**
1. `mkdir -p /tmp/probe && echo '<title>PROBE</title>OK' > /tmp/probe/probe.html`
   `cd /tmp/probe && python3 -m http.server 8797 --bind 127.0.0.1 &` (verify with curl first!)
2. Navigate the candidate browser to `http://127.0.0.1:8797/probe.html`.
3. Loads → same machine as the session. Error page → different machine.
   Pitfall: confirm via curl that the server is actually serving BEFORE concluding anything.

**Technique 2 — painted label (let the user identify by sight):**
Navigate the browser to `https://example.com`, then via javascript_tool set document.title and
body to a full-screen page like "BROWSER ONE" (distinct color per browser). The user glances at
each computer and reports which label is where. Use when two remote browsers must be told apart.

**Technique 3 — screenshot compare (with computer-use granted):**
Screenshot this machine's own screen; if the user recognizes it as the display in front of them
(or it shows the same page the extension-driven browser shows), machine identity is settled.
Browsers are read-only under screen control — seeing is enough for identification.

**After identifying:** record the deviceId → machine mapping in memory so it never needs re-deriving.
