<nav class="navbar navbar-expand-lg navbar-dark bg-dark
-wrap flex-md-nowrap">
    <div class="container">
      <a class="navbar-brand" href="#">Cakra</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
      data-bs-target="#navbarNav" aria-controls="navbarNav"
      aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse float-end" id="navbarNav">
        <ul class="navbar-nav flex-row flex-wrap bd-navbar-nav pt-2
        py-md-0">
          <li class="nav-item col-6 col-md-auto">
            <a class="nav-link px-2 {{ ($active === "home") ? 'active' : ''}}"
            href="/">Home</a>
          </li>
          <li class="nav-item col-6 col-md-auto">
            <a class="nav-link px-2 {{ ($active === "about") ? 'active' : ''}}"
            href="/about">About</a>
          </li>
          <li class="nav-item col-6 col-md-auto">
            <a class="nav-link px-2 {{ ($active === "posts") ? 'active' : ''}}"
            href="/posts">Blog</a>
          </li>
          <li class="nav-item col-6 col-md-auto">
            <a class="nav-link px-2 {{ ($active === "categories") ? 'active' : ''}}"
             href="/categories">Categories</a>
          </li>
        </ul>

        <ul class="navbar-nav ms-auto flex-row flex-wrap">
            @auth
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                role="button" data-bs-toggle="dropdown" aria-expanded="false">
                  Welcome back, {{ auth()->user()->name }}
                </a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <li><a class="dropdown-item" href="/dashboard">
                    <i class="bi bi-layout-text-window-reverse">
                        </i> My Dashboard</a></li>
                  <li><hr class="dropdown-divider"></li>

                  <li>
                    <form action="/logout" method="post">
                        @csrf
                        <button type="submit" class="dropdown-item">
                            <i class="bi bi-box-arrow-left"> </i> Logout
                        </button>
                    </form>
                  </li>
                </ul>

            </li>
                @else
                     <li class="nav-item col-6 col-md-auto">
                        <a href="/register" class="nav-link px-2
                        {{ ($active === "register") ? 'active' : ''}}">
                        Register <i class="bi bi-pencil-square"></i></a>
                    </li>


                    <li class="nav-item col-6 col-md-auto">
                        <a href="/login" class="nav-link px-2 bg-danger border-0
                        {{ ($active === "login") ? 'active' : ''}}">
                        Login <i class="bi bi-box-arrow-in-right"></i></a>
                    </li>


            @endauth
        </ul>
      </div>
    </div>
  </nav>
