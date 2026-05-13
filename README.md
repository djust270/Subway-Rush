# Subway Rush

A neon-themed endless runner game built with Three.js, inspired by Subway Surfers. Dodge trains, barriers, and overhead obstacles while collecting coins in a cyberpunk city.

## Features

- 3-lane movement with smooth transitions
- Jump over barriers and slide under overhead obstacles
- Coin collection with particle effects
- Progressive difficulty (speed increases over time)
- High score tracking via localStorage
- Synthesized sound effects (jump, slide, lane switch, coin collect, crash)
- Background music
- Touch and keyboard controls

## Controls

| Action | Keyboard | Touch |
|---|---|---|
| Move left | `A` / `ArrowLeft` | Swipe left |
| Move right | `D` / `ArrowRight` | Swipe right |
| Jump | `W` / `ArrowUp` | Swipe up |
| Slide | `S` / `ArrowDown` | Swipe down |

## Running Locally

No build step required — just serve the files with any HTTP server.

### Option 1: Python
```bash
cd Subway\ Rush
python3 -m http.server 8080
```

### Option 2: Node.js
```bash
npx serve . -p 8080
```

### Option 3: Any other static server
Open `subway_rush.html` through a local server (it won't work with `file://` due to audio and module loading).

Then navigate to `http://localhost:8080/subway_rush.html`.

## Running with Docker

### Docker Compose
```bash
docker-compose up --build
```

### Docker only
```bash
docker build -t subway-rush .
docker run -p 8080:8080 subway-rush
```

Then open `http://localhost:8080/subway_rush.html`.

## Project Structure

```
├── subway_rush.html      # Main game file (Three.js + game logic)
├── Override_Protocol.mp3 # Background music
├── Dockerfile            # Python HTTP server container
├── docker-compose.yml    # Docker Compose config
└── README.md             # This file
```

## Tech Stack

- **Three.js r128** — 3D rendering
- **Web Audio API** — Procedural sound effects
- **HTML5 Canvas** — Game surface
- **Python HTTP Server** — Local/Docker serving
