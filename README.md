# Waterworks Sketchpad

A single-page schematic tool for drawing water service layouts — meters, valves,
check valves and backflow assemblies joined by pipe runs that snap into place.

No server, no database, no build step. `index.html` is the whole program.

## Running it

Open `D:\programs\Waterworks Sketchpad` in File Explorer and double-click
`index.html`. That is the whole thing — it opens in your browser and works
offline. Right-click it once and "Pin to Quick access", or drag it to the
desktop with Alt held to leave a shortcut there.

`StartSketchpad.bat` is an alternative that serves the folder on port 8010
instead. It is only worth using if you want to reach the page from a phone or
tablet on the same network, at `http://<this-pc-ip>:8010/`.

Note: opening a file from the GitHub page shows you its text, not the running
program. GitHub is the backup copy; run it from D:.

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
