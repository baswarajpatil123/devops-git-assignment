<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DevOps CI/CD Portal - Baswaraj Patil</title>
    <style>
        * { box-sizing: border-box; margin: 0; padding: 0; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; }
        body { background: #0f172a; color: #f8fafc; display: flex; justify-content: center; align-items: center; min-height: 100vh; padding: 20px; }
        .card { background: #1e293b; border-radius: 12px; padding: 35px 40px; width: 100%; max-width: 650px; box-shadow: 0 10px 25px -5px rgba(0,0,0,0.5); border: 1px solid #334155; }
        .header { display: flex; align-items: center; justify-content: space-between; border-bottom: 2px solid #334155; padding-bottom: 20px; margin-bottom: 25px; }
        .title { font-size: 22px; font-weight: 700; color: #38bdf8; }
        .badge { background: #0284c7; color: #ffffff; padding: 6px 14px; border-radius: 9999px; font-size: 12px; font-weight: 600; text-transform: uppercase; letter-spacing: 0.5px; }
        .grid { display: grid; grid-template-columns: 1fr 1fr; gap: 15px; margin-bottom: 25px; }
        .info-box { background: #0f172a; padding: 14px 18px; border-radius: 8px; border-left: 4px solid #38bdf8; }
        .info-label { font-size: 12px; color: #94a3b8; text-transform: uppercase; font-weight: 600; margin-bottom: 4px; }
        .info-val { font-size: 15px; color: #f1f5f9; font-weight: 600; }
        .status-banner { background: #064e3b; border: 1px solid #059669; border-radius: 8px; padding: 14px; display: flex; align-items: center; gap: 12px; color: #a7f3d0; font-size: 14px; }
        .status-dot { width: 10px; height: 10px; background: #10b981; border-radius: 50%; box-shadow: 0 0 8px #10b981; }
    </style>
</head>
<body>
    <div class="card">
        <div class="header">
            <div>
                <div class="title">DevOps CI/CD Production WebApp</div>
                <div style="color: #94a3b8; font-size: 13px; margin-top: 4px;">Automated Jenkins Deployment to Apache Tomcat</div>
            </div>
            <div class="badge">Deployed v1.0</div>
        </div>
        <div class="grid">
            <div class="info-box">
                <div class="info-label">Candidate Name</div>
                <div class="info-val">Baswaraj Patil</div>
            </div>
            <div class="info-box">
                <div class="info-label">Docker Hub Account</div>
                <div class="info-val">baswarajpatil123</div>
            </div>
            <div class="info-box">
                <div class="info-label">CI Engine</div>
                <div class="info-val">Jenkins Master-Slave</div>
            </div>
            <div class="info-box">
                <div class="info-label">Deployment Target</div>
                <div class="info-val">Apache Tomcat Server (:8080)</div>
            </div>
        </div>
        <div class="status-banner">
            <div class="status-dot"></div>
            <div><strong>Application Status: UP &amp; Running</strong> | Build Artifact: <code>maven-web-app.war</code></div>
        </div>
    </div>
</body>
</html>
