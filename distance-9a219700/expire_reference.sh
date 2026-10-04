#!/bin/bash
# Removes the Culbertson reference excerpt from the published page after the window closes.
cd /Users/CHItest/Projects/Ableton-Helper-launchers || exit 1
git rm -q --ignore-unmatch distance-9a219700/ab/reference.m4a distance-9a219700/ab60/reference.m4a
git commit -q -m "Expire Culbertson reference excerpt (20-minute window closed)" || exit 0
for i in 1 2 3 4 5 6; do git push -q origin main && { echo "$(date): expired+pushed"; exit 0; }; sleep 30; done
echo "$(date): PUSH FAILED - files still live, run this script again"
