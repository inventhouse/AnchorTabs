# AnchorTabs
_Taming Your Browser Tabpocalypse_

Tab Chaos: open new tabs and windows wherever and whenever; leads to **many** tabs open in various windows and no idea where to find anything.

Anchor Tabs: Each window groups related tabs under a recognizable "anchor" in the first position, always use the right window or start a new one and pull out tabs that don't belong.  Always switch to the anchor before minimizing (`⌘1 ⌘M`); keep most windows "put away".

Archives: Create bookmarks for that window's tabs based on the anchor tab title

cat CopyAnchor.js | tr '\n' ' ' | sed -e 's/  */ /g' | pbcopy


⫸ plutil -p ~/Library/Safari/LastSession.plist | grep "TabUUID" | sort | uniq | wc -l
809
⫸ plutil -p ~/Library/Safari/LastSession.plist | grep "TabURL" | sort | uniq | wc -l
747

---
