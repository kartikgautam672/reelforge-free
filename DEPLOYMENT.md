# 🚀 ReelForge Deployment Guide

## Project Structure

```
reelforge-free/
├── server/          # Express backend (Render Web Service)
│   ├── server.js
│   ├── package.json
│   └── .env         # OPENAI_API_KEY
├── src/             # React frontend
├── vite.config.js   # Vite config with proxy
└── package.json     # Frontend dependencies
```

## 🖥️ Backend Deployment (Render)

### 1. Prepare Server
- Server is in `/server` folder
- Has Express app with `/api/generate` endpoint
- Uses `OPENAI_API_KEY` from environment

### 2. Deploy to Render
1. Go to https://render.com
2. Click "New" → "Web Service"
3. Connect your GitHub repository
4. Configure:
   - **Name**: `reelforge-api`
   - **Root Directory**: `server`
   - **Environment**: `Node`
   - **Build Command**: `npm install`
   - **Start Command**: `npm start`
5. Add Environment Variable:
   - Key: `OPENAI_API_KEY`
   - Value: Your OpenAI API key
6. Click "Create Web Service"

**Backend URL**: `https://reelforge-api.onrender.com` (or your custom name)

## 🎨 Frontend Deployment

### Option 1: Netlify (Recommended)

1. Go to https://netlify.com
2. Click "Add new site" → "Import an existing project"
3. Connect GitHub repository
4. Configure:
   - **Base directory**: `/` (root)
   - **Build command**: `npm install && npm run build`
   - **Publish directory**: `dist`
5. Add Environment Variable:
   - Key: `VITE_API_URL`
   - Value: `https://reelforge-api.onrender.com` (your Render backend URL)
6. Click "Deploy"

### Option 2: Render Static Site

1. Go to https://render.com
2. Click "New" → "Static Site"
3. Connect GitHub repository
4. Configure:
   - **Name**: `reelforge-frontend`
   - **Build Command**: `npm install && npm run build`
   - **Publish Directory**: `dist`
5. Add Environment Variable:
   - Key: `VITE_API_URL`
   - Value: `https://reelforge-api.onrender.com`

## 🔧 Local Development

### Start Backend
```bash
cd server
npm install
npm start
```
Backend runs on `http://localhost:3000`

### Start Frontend
```bash
npm install
npm run dev
```
Frontend runs on `http://localhost:5173`

The Vite proxy automatically routes `/api/*` to `http://localhost:3000`

## ✅ Testing

1. **Local**: Start both servers and test at `http://localhost:5173`
2. **Production**: 
   - Backend: Check `https://reelforge-api.onrender.com/health`
   - Frontend: Should fetch from backend automatically

## 📝 Environment Variables

### Backend (.env)
```
PORT=3000
OPENAI_API_KEY=sk-...
```

### Frontend (.env)
```
VITE_API_URL=https://reelforge-api.onrender.com
```

## 🌐 Final URLs

- **Backend API**: `https://reelforge-api.onrender.com`
- **Frontend**: `https://your-app.netlify.app` or `https://reelforge-frontend.onrender.com`

## 🎉 Done!

Your ReelForge app is now live with a separate backend and frontend!

