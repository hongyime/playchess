# PlayChess

A terminal-based chess game built in Python with a curses-powered text interface.

## Description

PlayChess is a two-player chess game that runs in the terminal, featuring a clean text-based user interface powered by Python's curses library. It implements standard chess rules including piece movement validation, pawn promotion, check detection, and move logging. Originally developed as a school project for NYJC J1 Computing Assignment.

## Features

- Full chess piece movement validation (King, Queen, Bishop, Knight, Rook, Pawn)
- Pawn special moves: first move double-step, diagonal capture, promotion to Queen
- Check detection with alert messages
- Move history logging to `moves.txt` with timestamps
- Debug mode for development and testing
- Text-based UI with curses library for clean terminal display
- Win condition detection (King capture)

## Technologies Used

- Python 3
- curses (Python standard library for terminal UI)
- datetime (for move timestamps)
- unittest (for testing)

## Installation

```bash
# Clone the repository
git clone https://github.com/hongyime/playchess.git

# Navigate to project directory
cd playchess
```

Use Python 3 in an interactive terminal. On Linux, install your distribution's
Python curses package if it is not included. On Windows, install the conditional
dependency from an activated virtual environment:

```sh
python -m pip install -r requirements.txt
```

The requirements file selects `windows-curses` only on Windows; the chess engine
itself uses the standard library.

## Usage

```bash
# Run the game using Python
python main.py

# Or on Windows, use the batch file
run.bat

# Or on Linux, use the shell launcher
sh run.sh

# Run tests
python -m unittest test_chess.py
```

The launchers resolve the project directory even when called from elsewhere and
preserve Python's exit status. Set `PYTHON` to an interpreter path when needed.
The curses interface requires a real terminal. The cross-platform CI job validates
launcher behavior without opening an interactive game. The existing engine suite
has known failures independent of these launchers (including uninitialized board
state and movement-rule assertions), so passing launcher checks does not establish
that the complete game is healthy.

### How to Play

1. The game displays an 8×8 chess board with Unicode chess symbols
2. Enter moves in the format `XY XY` where:
   - First `XY` is the start position (column, row)
   - Second `XY` is the end position (column, row)
   - Example: `01 03` moves a piece from position (0,1) to (0,3)
3. White player moves first, then players alternate turns
4. The game ends when a King is captured

## Demo

Run the game locally using `python main.py` in your terminal.

## Disclaimer

1. FOR EDUCATIONAL PURPOSES ONLY
2. USE AT YOUR OWN DISCRETION

## License

Apache-2.0. See [LICENSE](LICENSE) and [NOTICE](NOTICE).
