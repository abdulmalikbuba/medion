   <!-- info section -->
  <section class="info_section layout_padding2">
    <div class="container">
      <div class="row">
        <div class="col-md-3">
        
          <div class="info_contact">

            <h4>
              Contact
            </h4>
                              <% if $SiteConfig.PhoneNumber %>

            <div class="box">
              <div class="img-box">
                <img src="$resourceURL('themes/custom/images/telephone-symbol-button.png')" alt="">
              </div>
              <div class="detail-box">
                <h6>
                  $SiteConfig.PhoneNumber
                </h6>
              </div>
            </div>
                    <% end_if %>
                  <% if $SiteConfig.Email %>

            <div class="box">
              <div class="img-box">
                <img src="$resourceURL('themes/custom/images/email.png')" alt="">
              </div>
              <div class="detail-box">
                <h6>
                  $SiteConfig.Email
                </h6>
              </div>
            </div>
            <% end_if %>
          </div>
        </div>
        <div class="col-md-3">
        <% with $SiteConfig %>
        <% if $WidgetOneHeader %>
        <div class="info_menu">
            <h4>
              $WidgetOneHeader
            </h4>
            <ul class="navbar-nav  ">
            <% loop $MenuSet('WidgetOneHeader').MenuItems %>
              <li class="nav-item active">
                <a class="nav-link" href="$Link">$MenuTitle</a>
              </li>
              <% end_loop %>
            </ul>
          </div>
          <% end_if %>
        <% end_with %>
          
        </div>
        <div class="col-md-6">
          <div class="info_news">
            <h4>
              newsletter
            </h4>
            <% if $SessionMessage.Message %>
            <p>$SessionMessage.Message</p>
            <% end_if %>
            <form action="{$TopBaseURL}subscribe" method="POST">
              <input type="text" placeholder="Enter Your email">
              <div class="d-flex justify-content-center justify-content-md-end mt-3">
                <button type="submit" name="action_subscribe">
                  Subscribe
                </button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </section>


  <!-- end info section -->
 <!-- footer section -->
  <section class="container-fluid footer_section">
    <p>
      &copy; 2019 All Rights Reserved. Design by
      <a href="https://html.design/">Free Html Templates</a>
    </p>
  </section>
  <!-- footer section -->
