# ReelForge Server

Express API server for ReelForge AI Script Generator.

## Setup

1. Install dependencies:
```bash
npm install
```

2. Create `.env` file:
```bash
PORT=3000
OPENAI_API_KEY=your_api_key_here
```

3. Start server:
```bash
npm start
```

Server runs on `http://localhost:3000`

## API Endpoints

- `GET /health` - Health check
- `POST /api/generate` - Generate reel script
  - Body: `{ topic: "your topic here" }`
  - Returns: `{ result: "generated script" }`

## Deploy to Render

1. Push code to GitHub
2. Create new Web Service on Render
3. Connect GitHub repository
4. Set root directory: `server`
5. Build command: `npm install`
6. Start command: `npm start`
7. Add environment variable: `OPENAI_API_KEY`

