<section class="contact_section layout_padding">
<% with $MedicineDetail %>
<div class="container">
    <div class="row">
      <div class="col-lg-5">
                <img src="$Image.URL" alt="">
      </div>
      <div class="col-lg-7">
        <div class="card mb-4 rounded-3 shadow-sm">
          <div class="card-header py-3">
            <h4 class="my-0 fw-normal">$Name</h4>
          </div>
          <div class="card-body">
            <h1 class="card-title pricing-card-title">$$Price<small class="text-muted fw-light">/unit</small></h1>
           
              <p class"mb-5">$Description</p>
              <p class"mt-5">$Contact</p>
           
            
           
          </div>
        </div>
      </div>
    </div>
  </div>
<% end_with %>
</section>
