  <!-- NAVIGATION STARTS
   ========================================================================= -->
  <nav id="navigation" class="navbar navbar-expand-lg navbar-light fixed-top bg-dark">
      <div class="container-fluid">
          <a class="navbar-brand white-logo text-white text-uppercase fw-bold" href="{{ route('home') }}">
              Agency App
              {{-- <img src="assets/imgs/logo-white.png" class="img-fluid" alt=""> --}}
          </a>
          <a class="navbar-brand black-logo  text-dark text-uppercase fw-bold" href="{{ route('home') }}">
              Agency App
          </a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
              aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="nav navbar-nav ms-auto">
                  <li class="nav-item">
                      <a class="nav-link" href="{{ route('home') }}">Home </a>
                  </li>
                  <li class="nav-item">
                      <a class="nav-link" href="{{ route('about') }}">About</a>
                  </li>

                  <li class="nav-item">
                      <a class="nav-link" href="{{ route('projects') }}">Projects</a>
                  </li>

                  <li class="nav-item">
                      <a class="nav-link" href="{{ route('contact') }}">Contact</a>
                  </li>
              </ul>
              @auth
                  <!-- Settings Dropdown -->
                  <div class="text-dark p-2  bg-white rounded-pill me-2">
                      <div> <i class="bi bi-person"></i> {{ Auth::user()->name }}</div>
                  </div>
                  <form method="POST" action="{{ route('logout') }}">
                      @csrf

                      <a href="route('logout')"
                          onclick="event.preventDefault();
                                        this.closest('form').submit();">
                          {{ __('Log Out') }}
                      </a>
                  </form>
              @else
                  <span class="ps-3 d-none d-lg-block">
                      <a href="{{ route('login') }}" class="btn btn-primary">Login</a>
                      <a href="{{ route('register') }}" class="btn btn-white fw-bold">Register</a>
                  </span>
              @endauth


          </div>
      </div>
  </nav>
  <!-- NAVIGATION ENDS
                ========================================================================= -->
