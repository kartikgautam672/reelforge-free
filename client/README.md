# ReelForge Client

React + Vite frontend for ReelForge AI Script Generator.

## Setup

1. Install dependencies:
```bash
npm install
```

2. Create `.env` file (optional, for custom backend URL):
```bash
VITE_API_URL=https://reelforge-free.onrender.com
```

3. Start dev server:
```bash
npm run dev
```

## Build

```bash
npm run build
```

## Deploy to Netlify

1. Build the project: `npm run build`
2. Deploy the `dist` folder
3. Or connect GitHub and auto-deploy

## Deploy to Render (Static Site)

1. Push code to GitHub
2. Create new Static Site on Render
3. Connect GitHub repository
4. Set root directory: `client` (or root if keeping current structure)
5. Build command: `npm install && npm run build`
6. Publish directory: `dist`

