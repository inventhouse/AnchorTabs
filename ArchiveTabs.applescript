-- WARNING: I got this working, but to use it as in the Services menu requrires giving Safari as a whole permission to send system events and keystrokes which is, overall, outside my acceptable risk profile.  If you want to use it, here it is, but I don't plan to keep it up.

activate application "Safari"
delay 0.1
tell application "System Events" to keystroke "1" using command down

-- set js to "alert(document.title)"
set js to "javascript: (function () { /* Hacked from https://gist.github.com/bradleybossard/3667ad5259045f839adc */ function copyToClipboard(text) { if (window.clipboardData && window.clipboardData.setData) { /*IE specific code path to prevent textarea being shown while dialog is visible.*/ return clipboardData.setData('Text', text); } else if (document.queryCommandSupported && document.queryCommandSupported('copy')) { var textarea = document.createElement('textarea'); textarea.textContent = text; textarea.style.position = 'fixed'; /* Prevent scrolling to bottom of page in MS Edge.*/ document.body.appendChild(textarea); textarea.select(); try { return document.execCommand('copy'); /* Security exception may be thrown by some browsers.*/ } catch (ex) { console.warn('Copy to clipboard failed.', ex); return false; } finally { document.body.removeChild(textarea); } } } var tabName = '⚓️ ' + document.title; copyToClipboard(tabName); })();"

tell application "Safari" to do JavaScript js in tab 1 of front window

set bookmarksItem to 8
tell application "System Events"
	tell process "Safari" to click menu item bookmarksItem of menu "Bookmarks" of menu bar 1
	delay 0.1
	keystroke "v" using command down
end tell