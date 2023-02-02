<!-- header section strats -->
<header class="header_section">
  <div class="container">
  <% with $SiteConfig %>
      <div class="top_contact-container">
      <div class="tel_container">
        <% if $PhoneNumber %>
        <a href="#">
          <img src="$resourceURL('themes/custom/images/telephone-symbol-button.png')" alt=""> Call : $PhoneNumber
        </a>
        <% end_if %>
      </div>
      <div class="social-container">
        <% if $FacebookLink %>
        <a href="$FacebookLink">
          <img src="$resourceURL('themes/custom/images/fb.png')" alt="" class="s-1">
        </a>
        <% end_if %>
        <% if $TwitterLink %>
        <a href="">
          <img src="$resourceURL('themes/custom/images/twitter.png')" alt="" class="s-2">
        </a>
        <% end_if %>
        <% if $InstagramLink %>
        <a href="$InstagramLink">
          <img src="$resourceURL('themes/custom/images/instagram.png')" alt="" class="s-3">
        </a>
        <% end_if %>
      </div>
    </div>
  </div>
    <% end_with %>

  <div class="container-fluid">
    <nav class="navbar navbar-expand-lg custom_nav-container pt-3">
      <a class="navbar-brand" href="$AbsoluteBaseURL">
        <img src="$resourceURL('themes/custom/images/logo2.png')" alt="">
        <%-- <span>
          Medion
        </span> --%>
      </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <div class="d-flex  flex-column flex-lg-row align-items-center w-100 justify-content-between">
          <ul class="navbar-nav">
            <% loop $MenuSet('Main').MenuItems %>
            <% if $Children %>
            <li class="nav-item mx-auto">
              <div class="dropdown">
                <a class="nav-link $LinkingMode dropdown-toggle" id="dropdownMenuOffset" data-bs-toggle="dropdown" aria-expanded="false">
                  $MenuTitle
                </a>
                <ul class="dropdown-menu text-start rounded-0" aria-labelledby="dropdownMenuButton1">
                  <% loop $Children %>
                  <li><a class="dropdown-item" href="$Link">$MenuTitle</a></li>
                  <% end_loop %>
                </ul>
              </div>
            </li>
            <% else %>
            <li class="nav-item">
              <a class="nav-link $LinkingMode" href="$Link"> $MenuTitle </a>
            </li>
            <% end_if %>
            <% end_loop %>
          </ul>
          <%-- <form class="form-inline ">
                <input type="search" placeholder="Search">
                <button class="btn  my-2 my-sm-0 nav_search-btn" type="submit"></button>
              </form>
              <div class="login_btn-contanier ml-0 ml-lg-5">
                <a href="">
                  <img src="images/user.png" alt="">
                  <span>
                    Login
                  </span>
                </a>
              </div> --%>
        </div>
      </div>

    </nav>
  </div>
</header>
<!-- end header section -->