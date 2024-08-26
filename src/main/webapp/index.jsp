<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>JSP - Hello World</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f4;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
    }
    .login-container {
      background-color: #fff;
      padding: 2rem;
      border-radius: 8px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      max-width: 400px;
      width: 100%;
    }
    .login-container h2 {
      margin: 0 0 1rem;
      font-size: 1.5rem;
      color: #333;
    }
    .login-container label {
      display: block;
      margin-bottom: 0.5rem;
      color: #666;
    }
    .login-container input {
      width: 100%;
      padding: 0.75rem;
      margin-bottom: 1rem;
      border: 1px solid #ddd;
      border-radius: 4px;
      box-sizing: border-box;
    }
    .login-container button {
      width: 100%;
      padding: 0.75rem;
      background-color: #007bff;
      color: #fff;
      border: none;
      border-radius: 4px;
      font-size: 1rem;
      cursor: pointer;
    }
    .login-container button:hover {
      background-color: #0056b3;
    }
    .login-container .forgot-password {
      display: block;
      margin-top: 1rem;
      text-align: center;
      color: #007bff;
      text-decoration: none;
    }
    .login-container .forgot-password:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>


<%--<h1><%= "Hello World!" %></h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>--%>

<div class="login-container">
  <h2>Login</h2>
  <form action="hello-servlet" method="post">
    <label for="username">Username</label>
    <input type="text" id="userName" name="userName" required>

    <label for="password">Password</label>
    <input type="password" id="password" name="password" required>

    <button type="submit">Login</button>
  </form>
<%--
  <a href="#" class="forgot-password">Forgot your password?</a>
--%>
</div>
</body>
</html>