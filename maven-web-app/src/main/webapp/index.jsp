<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Enterprise CI/CD Microservice Portal | Baswaraj Patil</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700;800&family=JetBrains+Mono:wght@400;600&display=swap" rel="stylesheet">
    <style>
        :root {
            --primary: #38BDF8;
            --primary-glow: rgba(56, 189, 248, 0.25);
            --bg-body: #0A0E17;
            --bg-surface: #111827;
            --bg-card: #1E293B;
            --text-main: #F8FAFC;
            --text-muted: #94A3B8;
            --border: #334155;
            --accent-green: #10B981;
            --radius-md: 12px;
            --radius-lg: 16px;
        }

        * { box-sizing: border-box; margin: 0; padding: 0; }
        body {
            background-color: var(--bg-body);
            color: var(--text-main);
            font-family: 'Plus Jakarta Sans', -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 24px;
        }

        .portal-card {
            background: var(--bg-surface);
            border: 1px solid var(--border);
            border-radius: var(--radius-lg);
            width: 100%;
            max-width: 720px;
            padding: 36px;
            box-shadow: 0 20px 50px rgba(0, 0, 0, 0.6);
            position: relative;
            overflow: hidden;
        }

        .portal-header {
            display: flex;
            justify-content: space-between;
            align-items: flex-start;
            border-bottom: 1px solid var(--border);
            padding-bottom: 20px;
            margin-bottom: 24px;
        }

        .header-title {
            font-size: 22px;
            font-weight: 800;
            color: var(--text-main);
        }

        .header-sub {
            font-size: 13px;
            color: var(--text-muted);
            margin-top: 4px;
        }

        .badge-live {
            background: rgba(16, 185, 129, 0.15);
            border: 1px solid rgba(16, 185, 129, 0.3);
            color: var(--accent-green);
            padding: 5px 12px;
            border-radius: 20px;
            font-size: 11px;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }

        .grid-info {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 16px;
            margin-bottom: 24px;
        }

        .info-box {
            background: var(--bg-card);
            border: 1px solid var(--border);
            border-radius: var(--radius-md);
            padding: 16px 18px;
            border-left: 4px solid var(--primary);
        }

        .info-label {
            font-size: 11px;
            font-weight: 700;
            color: var(--text-muted);
            text-transform: uppercase;
            letter-spacing: 0.5px;
            margin-bottom: 4px;
        }

        .info-val {
            font-size: 15px;
            font-weight: 800;
            color: var(--text-main);
            font-family: 'JetBrains Mono', monospace;
        }

        .status-footer {
            background: var(--bg-card);
            border: 1px solid var(--border);
            border-radius: var(--radius-md);
            padding: 16px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            font-size: 13px;
        }

        .status-dot {
            width: 8px;
            height: 8px;
            background: var(--accent-green);
            border-radius: 50%;
            box-shadow: 0 0 10px var(--accent-green);
        }
    </style>
</head>
<body>
    <div class="portal-card">
        <div class="portal-header">
            <div>
                <h1 class="header-title">Enterprise CI/CD Microservice Portal</h1>
                <p class="header-sub">Automated Jenkins Pipeline ➔ OpenJDK 21 Maven Build ➔ Apache Tomcat</p>
            </div>
            <span class="badge-live">HTTP 200 • Live</span>
        </div>

        <div class="grid-info">
            <div class="info-box">
                <div class="info-label">Candidate Name</div>
                <div class="info-val">Baswaraj Patil</div>
            </div>
            <div class="info-box">
                <div class="info-label">Docker Hub Account</div>
                <div class="info-val">baswarajpatil123</div>
            </div>
            <div class="info-box">
                <div class="info-label">Build Engine</div>
                <div class="info-val">Java 21 LTS + Maven 3.9</div>
            </div>
            <div class="info-box">
                <div class="info-label">Deployment Target</div>
                <div class="info-val">Apache Tomcat Server (:8080)</div>
            </div>
        </div>

        <div class="status-footer">
            <div style="display:flex; align-items:center; gap:10px;">
                <div class="status-dot"></div>
                <span>Artifact: <code>maven-web-app.war</code></span>
            </div>
            <span style="color:var(--text-muted); font-size:12px;">Poll-SCM &amp; Webhook Auto-Deploy</span>
        </div>
    </div>
</body>
</html>
