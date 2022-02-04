<nav class="navbar navbar-expand-lg navbar-dark bg-dark -wrap flex-md-nowrap">
    <div class="container">
      <a class="navbar-brand" href="#">Cakra</a>
      <div class="collapse navbar-collapse float-end" id="navbarNav">
        <ul class="navbar-nav flex-row flex-wrap bd-navbar-nav pt-2 py-md-0">
          <li class="nav-item col-6 col-md-auto">
            <a class="nav-link {{ ($title === "Home") ? 'active' : ''}}" href="/">Home</a>
          </li>
          <li class="nav-item col-6 col-md-auto">
            <a class="nav-link {{ ($title === "About") ? 'active' : ''}}" href="/about">About</a>
          </li>
          <li class="nav-item col-6 col-md-auto">
            <a class="nav-link {{ ($title === "Posts") ? 'active' : ''}}" href="/posts">Blog</a>
          </li>
          <li class="nav-item bg-danger col-6 col-md-auto">
            <a class="nav-link active" href="/login">Login</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
