# TetrisSCAD
OpenSCAD library for creating Tetris blocks

## Usage
Include `Tetris.scad` into your SCAD file:
```OpenSCAD
use <Tetris.scad>
```

Where `Tetris.scad` points to the file. This will need to be changed if the file is not in your working directory. 

See: [OpenSCAD User Manual/Include Statement](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Include_Statement)

## API

# TetrisI(size: int, cutDepth: int, offset: int[3])
Parameters:
- size: int - The length of a side of a single block.
- cutDepth: int - The depth of the cut at each edge of a block.
- offset: int[3] - The three dimensional offset of the block.

# TetrisJ(size: int, cutDepth: int, offset: int[3])
Parameters:
- size: int - The length of a side of a single block.
- cutDepth: int - The depth of the cut at each edge of a block.
- offset: int[3] - The three dimensional offset of the block.

# TetrisL(size: int, cutDepth: int, offset: int[3])
Parameters:
- size: int - The length of a side of a single block.
- cutDepth: int - The depth of the cut at each edge of a block.
- offset: int[3] - The three dimensional offset of the block.

# TetrisO(size: int, cutDepth: int, offset: int[3])
Parameters:
- size: int - The length of a side of a single block.
- cutDepth: int - The depth of the cut at each edge of a block.
- offset: int[3] - The three dimensional offset of the block.

# TetrisS(size: int, cutDepth: int, offset: int[3])
Parameters:
- size: int - The length of a side of a single block.
- cutDepth: int - The depth of the cut at each edge of a block.
- offset: int[3] - The three dimensional offset of the block.

# TetrisT(size: int, cutDepth: int, offset: int[3])
Parameters:
- size: int - The length of a side of a single block.
- cutDepth: int - The depth of the cut at each edge of a block.
- offset: int[3] - The three dimensional offset of the block.

# TetrisZ(size: int, cutDepth: int, offset: int[3])
Parameters:
- size: int - The length of a side of a single block.
- cutDepth: int - The depth of the cut at each edge of a block.
- offset: int[3] - The three dimensional offset of the block.
