const express = require("express");
const path = require("path");

const app = express();
const PORT = process.env.PORT || 8080;

// 1. Serve static files (HTML, CSS, JS) from the 'public' directory
app.use(express.static(path.join(__dirname, "public")));

// 2. API Endpoint: Countdown
app.get("/countdown", (req, res) => {
  const christmas = new Date("December 25, 2024 00:00:00");
  const today = new Date();
  const diff = christmas - today;

  res.json({
    christmas: christmas.toISOString(),
    today: today.toISOString(),
    timeUntil: diff
  });
});

// 3. Start the server
app.listen(PORT, () => {
  console.log(`Server running at http://localhost:${PORT}/`);
});
