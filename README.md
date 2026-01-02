# 🧭 Home Dashboard

The landing page for the Home Platform. It serves as a static directory to access all local microservices.

**Built With:** HTML5, CSS3, Nginx (Alpine).

## ⚡ Features
* **Zero-Overhead:** Served via a tiny Nginx container named `dashboard`.
* **Live Health Checks:** Javascript fetches app status in the background to show Green/Red indicators.
* **Dark Mode:** Minimalist CSS design.

## 🛠️ Customization

### Adding a New Link
Open `index.html` and add a new card to the grid:

```html
<a href="https://new-app.mehta.local" class="card">
    <div id="status-new" class="status-dot"></div>
    <h3>🚀 New App</h3>
    <p>Description here</p>
</a>
```

### Updating Health Checks
Add your new service URL to the `runChecks()` function in the script section of `index.html`:

```javascript
checkHealth('https://new-app.mehta.local', 'status-new');
```

## 🐳 Docker Deployment

This repo is built automatically by the `gateway` compose file.
To build it manually:

```bash
docker build -t dashboard .
docker run --name dashboard -p 8080:80 dashboard
```
