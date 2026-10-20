<%-- 
    Document   : register
    Created on : Oct 20, 2026, 12:20:29 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Register | Online Library Portal</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
    <div class="container min-vh-100 d-flex align-items-center justify-content-center py-4">
        <div class="col-12 col-sm-10 col-md-8 col-lg-6 col-xl-5">

            <div class="text-center mb-4">
                <a href="landing.html" class="text-decoration-none">
                    <h1 class="h3 fw-bold text-success mb-1">Online Library Portal</h1>
                </a>
                <p class="text-muted mb-0">Create a member account to borrow and reserve books.</p>
            </div>

            <div class="card shadow-sm border-0 border-top border-success border-4">
                <div class="card-body p-4">
                    <h2 class="h4 mb-3">Register</h2>

                    <div id="error-exists" class="alert alert-danger d-none" role="alert">
                        That username is already taken. Please choose another one.
                    </div>
                    <div id="error-mismatch" class="alert alert-danger d-none" role="alert">
                        The two passwords do not match. Please try again.
                    </div>

                    <form action="register" method="post">
                        <div class="mb-3">
                            <label for="username" class="form-label">Username</label>
                            <input type="text" class="form-control" id="username" name="username"
                                   pattern="[A-Za-z0-9_]{3,20}" autocomplete="username"
                                   aria-describedby="usernameHelp" required autofocus>
                            <div id="usernameHelp" class="form-text">3 to 20 letters, numbers, or underscores.</div>
                        </div>

                        <div class="row g-3 mb-3">
                            <div class="col-12 col-md-6">
                                <label for="email" class="form-label">Email</label>
                                <input type="email" class="form-control" id="email" name="email"
                                       autocomplete="email" required>
                            </div>
                            <div class="col-12 col-md-6">
                                <label for="phone" class="form-label">Phone number</label>
                                <input type="tel" class="form-control" id="phone" name="phone"
                                       pattern="[0-9]{10}" autocomplete="tel"
                                       aria-describedby="phoneHelp" required>
                                <div id="phoneHelp" class="form-text">10 digits, e.g. 0771234567.</div>
                            </div>
                        </div>

                        <div class="row g-3 mb-2">
                            <div class="col-12 col-md-6">
                                <label for="password" class="form-label">Password</label>
                                <input type="password" class="form-control" id="password" name="password"
                                       minlength="8" autocomplete="new-password"
                                       aria-describedby="passwordHelp" required>
                                <div id="passwordHelp" class="form-text">At least 8 characters.</div>
                            </div>
                            <div class="col-12 col-md-6">
                                <label for="confirmPassword" class="form-label">Confirm password</label>
                                <input type="password" class="form-control" id="confirmPassword" name="confirmPassword"
                                       minlength="8" autocomplete="new-password" required>
                            </div>
                        </div>

                        <div class="form-check mb-3">
                            <input class="form-check-input" type="checkbox" id="showPassword">
                            <label class="form-check-label small" for="showPassword">Show passwords</label>
                        </div>

                        <div class="form-check mb-4">
                            <input class="form-check-input" type="checkbox" id="terms" name="terms" value="true" required>
                            <label class="form-check-label small" for="terms">
                                I agree to follow the library's
                                <a href="help.html" class="link-success">borrowing rules</a>.
                            </label>
                        </div>

                        <button type="submit" class="btn btn-success w-100">Create account</button>
                    </form>
                </div>

                <div class="card-footer bg-white text-center small py-3">
                    Already a member? <a href="login.jsp" class="link-success">Login</a>
                </div>
            </div>
        </div>
    </div>

    <script>
        // Show or hide both password fields
        document.getElementById("showPassword").addEventListener("change", function () {
            var type = this.checked ? "text" : "password";
            document.getElementById("password").type = type;
            document.getElementById("confirmPassword").type = type;
        });

        // Show an error when the servlet redirects to register.html?error=exists or ?error=mismatch
        var error = new URLSearchParams(window.location.search).get("error");
        if (error === "exists") {
            document.getElementById("error-exists").classList.remove("d-none");
        } else if (error === "mismatch") {
            document.getElementById("error-mismatch").classList.remove("d-none");
        }
    </script>
</body>
</html>
