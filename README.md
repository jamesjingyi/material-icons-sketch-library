# Material Icons Sketch Library

Add this Sketch file to your Libraries folder so that you can use the icons without downloading them all individually!

You can use the `Libraries` alias to add it quickly.

This is exported directly from the [`material-design-icons`](https://github.com/google/material-design-icons) repo.

To make it I:
1. Cloned the [`material-design-icons`](https://github.com/google/material-design-icons) repo into my `Github` folder
2. `cd` to the `material-icons-sketch-library` folder (also in the `Github` folder)
3. Ran `chmod +x rename_material_icons.sh` to make it executable
4. Ran the script using `./rename_material_icons.sh` (waited for the export in `output` — this is not included because I don't want to re-add loads of .svg files)
5. Dragged everything into Figma, selected everything and ran `Create multiple components`
6. Selected everything and did `⌘` + `R`, renaming all the `@` symbols to `/`
Saved the file locally using `Save As .fig...`
7. Opened the `.fig` file in Sketch
8. Did `Save to Your Mac...` and added it to the `Libraries` folder
