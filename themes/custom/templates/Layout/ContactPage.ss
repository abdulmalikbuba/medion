 <!-- contact section -->
  <section class="contact_section layout_padding">
    <div class="container">
      <div class="row">
        <div class="custom_heading-container ">
          <h2>
            Request A call back
          </h2>
        </div>
      </div>
    </div>
       

    <div class="container layout_padding2">
     <% include Notification %>
      <div class="row">
        <div class="col-md-5">
          <div class="form_contaier">
            <form action="{$TopBaseURL}home/requestCallBack" method="POST">
              <div class="form-group">
                <label for="exampleInputName1">Name</label>
                <input type="text" name="Name" class="form-control" id="exampleInputName1">
              </div>
              <div class="form-group">
                <label for="exampleInputNumber1">Phone Number</label>
                <input type="text" name="PhoneNumber" class="form-control" id="exampleInputNumber1">
              </div>

              <div class="form-group">
                <label for="exampleInputEmail1">Email </label>
                <input type="email" name="Email" class="form-control" id="exampleInputEmail1">
              </div>
              <div class="form-group ">
                <label for="inputState">Select medicine</label>
                <select id="inputState" name="Medicine" class="form-control">
                  <option name="Medicine" selected>Medicine 1</option>
                  <option name="Medicine" selected>Medicine 2</option>
                  <option name="Medicine" selected>Medicine 3</option>
                </select>
              </div>
              <div class="form-group">
                <label for="exampleInputMessage">Message</label>
                <input type="text" name="Message" class="form-control" id="exampleInputMessage">
              </div>
              <button type="submit" name="action_requestCallBack" class="">Send</button>
            </form>
          </div>
        </div>
        <div class="col-md-7 mt-3">
          <div class=" row">
          <div class="gmap_canvas"><iframe width="100%" height="510" id="gmap_canvas" src="https://maps.google.com/maps?q=rag lineker&t=&z=10&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><a href="https://2yu.co">2yu</a><br><style>.mapouter{position:relative;text-align:right;height:510px;width:770px;}</style><a href="https://embedgooglemap.2yu.co">html embed google map</a><style>.gmap_canvas {overflow:hidden;background:none!important;height:510px;width:100%;}</style></div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end contact section -->


