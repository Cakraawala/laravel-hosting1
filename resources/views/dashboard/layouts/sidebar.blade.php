<nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block
bg-light sidebar collapse">
<div class="position-sticky pt-3">

    <ul class="nav flex-column">
        <li class="nav-item">
            <a class="nav-link {{ Request::is('dashboard') ? 'active' : '' }}" aria-current="page" href="/dashboard">
            <span data-feather="database"></span> Dashboard
            </a>
        </li>

        <h6 class="sidebar-heading d-flex align-items-center justify-content-between px-3 mt-4 mb-1 text-muted">
            <span>Post Report </span>
        </h6>

        <ul class="nav flex-column mb-2">

            <li class="nav-item">
                <a class="nav-link {{ Request::is('dashboard/posts') ? 'active' : ''}}" href="/dashboard/posts">
                <span data-feather="file-minus"></span> My posts
                </a>
            </li>

            <li class="nav-item">
              <a class="nav-link  {{ Request::is('dashboard/posts/create') ? 'active' : '' }}" href="/dashboard/posts/create">
                <span data-feather="plus-circle"></span>
                Create new Post
              </a>
            </li>
        </ul>
    </ul>

    @can('admin')
        <h6 class="sidebar-heading d-flex align-items-center justify-content-between px-3 mt-4 mb-1 text-muted">
            <span>Administrator</span>
        </h6>
        <ul class="nav flex-column mb-2">
            <li class="nav-item">
                <a class="nav-link {{ Request::is('dashboard/categories') ? 'active' : ''}}" href="/dashboard/categories">
                <span data-feather="folder"></span> Post Categories
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link  {{ Request::is('dashboard/categories/create') ? 'active' : '' }}" href="#">
                    {{-- /dashboard/categories/create --}}
                  <span data-feather="plus-circle"></span>
                  Create new Category
                </a>
              </li>

        </ul>
    @endcan




    <h6 class="sidebar-heading d-flex align-items-center justify-content-between px-3 mt-4 mb-1 text-muted">
            <span>Back to Homepage</span>
    </h6>

        <ul class="nav flex-column mb-2">

            <li class="nav-item">
                <a class="nav-link" aria-current="page" href="/">
                <span data-feather="home"></span> Home
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" aria-current="page" href="/about">
                <span data-feather="tag"></span> About
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" aria-current="page" href="/posts">
                <span data-feather="file-text"></span> Blog
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" aria-current="page" href="/categories">
                <span data-feather="more-horizontal"></span> Category
                </a>
            </li>
        </ul>

</div>
</nav>
