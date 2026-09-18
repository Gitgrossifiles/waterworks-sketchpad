# Waterworks Sketchpad

A single-page schematic tool for drawing water service layouts — meters, valves,
check valves and backflow assemblies joined by pipe runs that snap into place.

No server, no database, no build step. `index.html` is the whole program.

## Opening it

**https://gitgrossifiles.github.io/waterworks-sketchpad/**

That is the tool, live, on any device with a browser. Nothing to install, no
server to start, and it works away from the shop on cellular. This is the same
way `Pitgps` and `meterlookup` are published.

On an iPad, open that link in Safari and use **Share -> Add to Home Screen**. It
then opens full screen with no browser bars.

### The copy on D:

`D:\programs\Waterworks Sketchpad\index.html` is the same program as a local
file. Double-click it to run it with no network at all. Use this one when the
internet is down or you are somewhere without service.

`StartSketchpad.bat` serves the folder on port 8010 so another device on the
same network can reach it at `http://192.168.0.32:8010/`. Since the published
link above works from anywhere, this is now only useful with no internet.

### Two copies, two sets of drawings

The published page and the local file are separate origins, so each keeps its
own autosave. A drawing started on the published link will not appear when you
open the local file, or the other way round. Use **Save** and **Open** to carry
a drawing between them, or between devices.

Changes to `index.html` only reach the published link once they are committed
and pushed. Nothing anyone draws leaves their own browser — the page has no
server behind it.

## Drawing

- Drag a symbol from the left palette onto the sheet, or tap it and then tap the
  sheet. Both work on a tablet.
- Press **P** for the pipe tool and click from one port to the next. Lines snap
  to symbol ports, to existing pipe vertices, and to the 10-unit grid; the
  status bar names which one it caught.
- Runs route as clean 90-degree elbows. **Shift** draws a free angle, **Tab**
  flips which way the elbow turns, **Enter** ends the run.
- Pipe ends dropped on a port stay tied to it, so moving a meter drags its pipes
  along.

### Keys

| Key | Action |
| --- | --- |
| `V` / `P` | select / pipe tool |
| `R` / `Shift+R` | rotate 90 degrees |
| `Delete` | delete selection |
| `F` | fit drawing to screen |
| `Ctrl+Z` / `Ctrl+Shift+Z` | undo / redo |
| `Esc` | cancel the run or the armed symbol |
| drag / wheel / pinch | pan / zoom |

## On an iPad

This is the main way it gets used, so the tablet side is built out rather than
tolerated. Open the link above in Safari and add it to your home screen.

**Drawing with a Pencil.** The Pencil draws and your palm is ignored while it is
touching the glass. Finger gestures come back a moment after you lift it.

**Everything works without a keyboard.** While the pipe tool is active a bar
sits over the drawing with **Done**, **Back**, **Cancel**, a **Free angle**
toggle and **Flip elbow** — the five things that were otherwise Enter, Esc,
Shift and Tab.

| Gesture | Does |
| --- | --- |
| tap a symbol, then tap the sheet | place it |
| tap | select a symbol or a pipe run |
| drag what is selected | move it |
| one finger on empty sheet | pan |
| pinch | zoom |
| **Fit** | bring the whole drawing back on screen |

Snap targets and the port and vertex handles are drawn larger for a fingertip,
and the side panel folds away until you select something so it is not eating the
screen in portrait.

**Saving on iPad.** Export SVG and Save drop the file into the Files app the
same as any other download. Open reads one back from Files or iCloud.

## Symbols

Water meter, curb stop, fire hydrant, pump, pressure gauge, gate valve, ball
valve, check valve, pressure reducer, double check assembly, RPZ assembly, tee,
90 elbow, reducer, strainer, plus a dashed pit/vault outline and a text note.

Pipe sizes run 3/4" through 12"; the size sets both the printed label and the
line weight.

## Saving

- The current drawing autosaves to the browser it was drawn in. It does not
  follow you to another machine.
- **Save** writes a `.json` drawing file; **Open** reads one back. Use these to
  move a drawing between the office PC and a tablet, or to keep one with a job.
- **Export SVG** writes a white-background drawing with the title and date in
  the corner, for printing or dropping into a document.

## Scope

Deliberately standalone. It does not touch `hbk_water_meters` or the Flask app,
and it has no dependencies beyond the Google Fonts stylesheet it links (the page
falls back to system fonts without it).
