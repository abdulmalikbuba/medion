<section class="contact_section layout_padding">
<% with $VitaminsDetail %>
<div class="container">
    <div class="row">
      <div class="col-lg-5">
        <div class="img-box">
                <img src="$Image.URL" alt="">
              </div>
      </div>
      <div class="col-lg-7">
        <div class="card mb-4 rounded-3 shadow-sm">
          <div class="card-header py-3">
            <h4 class="my-0 fw-normal">$Name</h4>
          </div>
          <div class="card-body">
            <h1 class="card-title pricing-card-title">$$Price<small class="text-muted fw-light">/unit</small></h1>
            <ul class="list-unstyled mt-3 mb-4">
              <li>10 users included</li>
              <li>2 GB of storage</li>
              <li>Email support</li>
              <li>Help center access</li>
            </ul>
            <button type="button" class="w-100 btn btn-lg btn-outline-primary">Buy Now</button>
          </div>
        </div>
      </div>
    </div>
  </div>
<% end_with %>
</section>
