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
    <nav class="navbar navbar-expand-lg custom_nav-container pt-3 ">
      <a class="navbar-brand nav-image" href="$AbsoluteBaseURL">
        <img src="$resourceURL('themes/custom/images/logo2.png')" alt="" class="site_logo">
      
      </a>
      
       <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <i class="fa-solid fa-bars"></i>
    </button>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <div class="d-flex  flex-column flex-lg-row align-items-center w-100 justify-content-around">
          
       <a class="navbar-brand nav-image2" href="$AbsoluteBaseURL">
        <img src="$resourceURL('themes/custom/images/logo2.png')" alt="" class="site_logo">
      
      </a>
              <div class="login_btn-contanier ml-0 ml-lg-5">
                
              </div>
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
        </div>
      </div>

    </nav>
  </div>
</header>
<!-- end header section -->




