Taming My Browser Tabpocalypse
================================

For a long time, I would just open new tabs in any browser window that was convenient and look up whatever was on my mind.  I'd sometimes try to open a fresh window when I was starting something new, but later I'd find I had several different windows that each had some content for a particular thing.  Often, I wouldn't be able to find a tab I _knew_ I had open _somewhere_, so I'd have look it up again.  Tab Chaos.  There had to be a better way.

Anchor Tabs
-----------
_"1 weird trick" for managing browser tabs_

**1.** Make the first tab of each window the "anchor" for that topic / task; maybe the git-whatever page, Wikipedia article, or issue ticket, something that serves to identify the "subject" of that window.

**2.** Be strict about using the right window; if a tab opens in a window where it doesn't belong, at _least_ pull it out; ideally put it where it belongs

**3.** _Always_ switch back to the first tab when minimizing the window (often just switch back to it anyway) so it shows up in the window list under a consistent name.  In most browsers `⌘1` (or whatever the "command" key for your platform is) will do that - `⌘1 ⌘M`, quick and easy!

This technique has served me very well, I'm able to go back to things I worked on weeks ago and find the query I cooked up for it or whatever I'm looking for.  

It worked _too_ well, I didn't know which of the windows with all that context would be useful so I kept them minimized - Over 800 tabs in more than 300 windows!

Bookmarking
-----------
Create bookmarks for that window's tabs based on the anchor tab title

cat CopyAnchor.js | tr '\n' ' ' | sed -e 's/  */ /g' | pbcopy

_(( Write this part up ))_

_(( Figure out how to script Safari's goofy shortcuts: [How to Script macOS Keyboard Shortcuts](https://www.rightpoint.com/rplabs/script-keyboard-os-x-shortcuts) ))_

---

cat CopyAnchor.js | tr '\n' ' ' | sed -e 's/  */ /g' | pbcopy


⫸ plutil -p ~/Library/Safari/LastSession.plist | grep "TabUUID" | sort | uniq | wc -l
809
⫸ plutil -p ~/Library/Safari/LastSession.plist | grep "TabURL" | sort | uniq | wc -l
747

The following "should" work, but they don't

Add Bookmarks for These  Tabs...
⫸ defaults read -app Safari
{
    NSUserKeyEquivalents =     {
        "Add Bookmarks for These 2 Tabs..." = "@^1";
    };
}
⫸ defaults read com.apple.universalaccess "com.apple.custommenu.apps"
(
    "com.apple.Safari"
)
⫸
⫸ defaults write -app Safari NSUserKeyEquivalents -dict-add "Add Bookmarks for These 3 Tabs..." "@^1"  # Not showing up even after `killall cfprefsd`, restart Safari, even reboot

---
