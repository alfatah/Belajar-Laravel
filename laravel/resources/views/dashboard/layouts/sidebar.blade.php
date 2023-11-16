<div class="container-fluid">
    <div class="row">
      <div class="sidebar border border-right col-md-3 col-lg-2 p-0 bg-body-tertiary">
        <div class="offcanvas-md offcanvas-end bg-body-tertiary" tabindex="-1" id="sidebarMenu" aria-labelledby="sidebarMenuLabel">
          <div class="offcanvas-header">
            <h5 class="offcanvas-title" id="sidebarMenuLabel">Alfatah Blog</h5>
            <button type="button" class="btn-close" data-bs-dismiss="offcanvas" data-bs-target="#sidebarMenu" aria-label="Close"></button>
          </div>
          <div class="offcanvas-body d-md-flex flex-column p-0 pt-lg-3 overflow-y-auto">
            <ul class="nav flex-column">
              <li class="nav-item">
                <a class="nav-link d-flex {{ Request::is('dashboard') ? 'active' : 'text-black' }}" aria-current="page" href="/dashboard">
                  <svg class="bi"><use xlink:href="#house-fill"/></svg>
                  Dashboard
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link d-flex {{ Request::is('dashboard/posts') ? 'active' : 'text-black' }}" href="/dashboard/posts">
                  <i class="bi bi-file-text-fill"></i>
                  My Posts
                </a>
              </li>
              <div class="col-8">
                  <div data-bs-spy="scroll" data-bs-target="#navbar-example3" data-bs-smooth-scroll="true" class="scrollspy-example-2" tabindex="0">
                    <div id="item-1">
                    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
                    </div>
                  </div>
                </div>
              </ul>
          </div>
        </div>
      </div>


      <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
        @yield('container')
      </main>
    </div>
  </div>
