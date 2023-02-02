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
        <div class="col-md-7">
          <div class="detail-box">
            <h3>
              Get Now Medicines
            </h3>
            <p>
              There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration
              in some form, by injected humour, or randomised words which don't look even slightly believable.
            </p>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end contact section -->


