<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Dashboard</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f4;
      margin: 0;
      padding: 0;
    }
    .dashboard-container {
      max-width: 800px;
      margin: 2rem auto;
      padding: 2rem;
      background-color: #fff;
      border-radius: 8px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }
    .dashboard-container h1 {
      margin: 0;
      font-size: 2rem;
      color: #333;
    }
    .dashboard-container .message {
      margin: 1rem 0;
      font-size: 1.25rem;
      color: #666;
    }
    .dashboard-container .count {
      font-size: 2rem;
      font-weight: bold;
      color: #007bff;
    }
    .dashboard-container .card {
      background-color: #f9f9f9;
      padding: 1rem;
      margin: 1rem 0;
      border-radius: 4px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }
  </style>
</head>
<body>
<div align="right"><a ></a></div>
<div class="dashboard-container">
  <h1>Dashboard</h1>
  <div class="card">
    <p class="message">User Name</p>
    <p class="count"><%=request.getAttribute("userName")%></p>
  </div>
 <%-- <div class="card">
    <p class="message">Total messages</p>
    <p class="count">45</p>
  </div>
  <div class="card">
    <p class="message">Pending tasks</p>
    <p class="count">7</p>
  </div>--%>
</div>
</body>
</html>
