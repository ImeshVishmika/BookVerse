<%-- 
    Document   : login
    Created on : Oct 18, 2026, 11:37:52 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Login | Online Library Portal</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body class="bg-light">
        <div class="container min-vh-100 d-flex align-items-center justify-content-center py-4">
            <div class="col-12 col-sm-10 col-md-7 col-lg-5 col-xl-4">

                <div class="text-center mb-4">
                    <h1 class="h3 fw-bold text-success mb-1">Online Library Portal</h1>
                    <p class="text-muted mb-0">Sign in to borrow, renew, and reserve books.</p>
                </div>

                <div class="card shadow-sm border-0 border-top border-success border-4">
                    <div class="card-body p-4">
                        <h2 class="h4 mb-3">Login</h2>

                        <div id="error" class="alert alert-danger d-none" role="alert">
                            Incorrect username or password. Check both and try again.
                        </div>

                        <form action="login" method="post">
                            <div class="mb-3">
                                <label for="username" class="form-label">Username</label>
                                <input type="text" class="form-control" id="username" name="username"
                                       autocomplete="username" required autofocus>
                            </div>

                            <div class="mb-3">
                                <label for="password" class="form-label">Password</label>
                                <input type="password" class="form-control" id="password" name="password"
                                       autocomplete="current-password" required>
                                <div class="form-check mt-2">
                                    <input class="form-check-input" type="checkbox" id="showPassword">
                                    <label class="form-check-label small" for="showPassword">Show password</label>
                                </div>
                            </div>

                            <div class="d-flex justify-content-between align-items-center mb-3">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="remember" name="remember" value="true">
                                    <label class="form-check-label" for="remember">Keep me signed in</label>
                                </div>
                                <a href="forgot-password.html" class="link-success small">Forgot password?</a>
                            </div>

                            <button type="submit" class="btn btn-success w-100">Login</button>
                        </form>
                    </div>

                    <div class="card-footer bg-white text-center small py-3">
                        New member? <a href="register.jsp" class="link-success">Create an account</a>
                    </div>
                </div>
            </div>
        </div>

        <jsp:include page="footer.jsp"/>

        <script>
            document.getElementById("showPassword").addEventListener("change", function () {
                document.getElementById("password").type = this.checked ? "text" : "password";
            });
        </script>
    </body>
</html>