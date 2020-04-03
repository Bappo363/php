<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Home</title>
  </head>
  <body>

    <header>
      <nav>

        <ul>
          <li><a href="index.php">Home</a></li>
          <li><a href="#">Info</a></li>
          <li><a href="#">Shop</a></li>
          <li><a href="#">Contact</a></li>
        </ul>
        <div>
          <form action="includes/login.inc.php" method="post">
              <input type="text" name="" placeholder="Email...">
              <input type="password" name="password" placeholder="Password...">
            <button type="submit" name="submit">Login</button>
          </form>
        <a href="signup.php">Register</a>
        </div>
        <form action="includes/logout.inc.php" method="post">
          <button type="submit" name="logout">Logout</button>
        </form>
      </nav>
    </header>

  </body>
</html>
