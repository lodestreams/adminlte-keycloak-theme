<!--
  ~ JBoss, Home of Professional Open Source.
  ~ Copyright (c) 2011, Red Hat, Inc., and individual contributors
  ~ as indicated by the @author tags. See the copyright.txt file in the
  ~ distribution for a full listing of individual contributors.
  ~
  ~ This is free software; you can redistribute it and/or modify it
  ~ under the terms of the GNU Lesser General Public License as
  ~ published by the Free Software Foundation; either version 2.1 of
  ~ the License, or (at your option) any later version.
  ~
  ~ This software is distributed in the hope that it will be useful,
  ~ but WITHOUT ANY WARRANTY; without even the implied warranty of
  ~ MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
  ~ Lesser General Public License for more details.
  ~
  ~ You should have received a copy of the GNU Lesser General Public
  ~ License along with this software; if not, write to the Free
  ~ Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA
  ~ 02110-1301 USA, or see the FSF site: http://www.fsf.org.
  -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
    <title>Welcome to LodeStream Auth Service</title>

    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="robots" content="noindex, nofollow">

    <link rel="shortcut icon" href="welcome-content/favicon.png" type="image/png">
    <link rel="StyleSheet" href="welcome-content/keycloak.css" type="text/css">
    <style>
        label {
            display: inline-block;
            width: 200px;
            text-align: right;
            margin-right: 10px;
        }

        button {
            margin-left: 215px;
        }

        form {
            background-color: #eee;
            border: 1px solid #666;
            padding-bottom: 1em;
        }

        .error {
            color: #a30000;
        }
    </style>
</head>

<body>
<div class="wrapper">
    <div class="content">
        <div class="logo">
                <img src="welcome-content/logo-336w.png" alt="LodeStream" border="0" height="168" />
        </div>
        <h1>Welcome to LodeStream Auth Service</h1>

        <#if successMessage?has_content>
            <p>${successMessage}</p>
        <#elseif errorMessage?has_content>
            <p class="error">${errorMessage}</p>
        <#elseif bootstrap>
            <#if localUser>
                <p>Please create an initial admin user to get started.</p>
            <#else>
                <p>
                    You need local access to create the initial admin user. Open <a href="http://localhost:8080/auth">http://localhost:8080/auth</a>
                    or use the add-user-keycloak script.
                </p>
            </#if>
        </#if>

        <#if bootstrap && localUser>
            <form method="post">
                <p>
                    <label for="username">Username</label>
                    <input id="username" name="username" />
                </p>

                <p>
                    <label for="password">Password</label>
                    <input id="password" name="password" type="password" />
                </p>

                <p>
                    <label for="passwordConfirmation">Password confirmation</label>
                    <input id="passwordConfirmation" name="passwordConfirmation" type="password" />
                </p>

                <input id="stateChecker" name="stateChecker" type="hidden" value="${stateChecker}" />

                <button id="create-button" type="submit">Create</button>
            </form>
        </#if>

        <fieldset>
          <legend>Auth Services</legend>
          <ul>
            <li><a href="/auth/admin/master/console/index.html">Login: Realm - master</a></li>
            <li><a href="/auth/realms/ls-dev/account">Login: Realm - ls-dev</a></li>
          </ul>
        </fieldset>
        <br>
        <p>
          <a href="https://lodestream.com" target="_blank">LodeStream Official Website</a> |
          <a href="https://support.lodestream.com" target="_blank">LodeStream Support Center</a>
        </p>
    </div>
</div>
</body>
</html>
