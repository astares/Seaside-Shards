rendering
renderContentOn: html
 	html break.
	html html: '
	
	<div class="card" style="width: 40%;margin: 0 auto;">
  <img class="card-img-top" src="https://designrevision.com/docs/shards/images/3.jpg" alt="Card image cap">
  <div class="card-body">
    <h4 class="card-title">Login</h4>

    <p class="card-text">Please enter your login credentials</p>

	<form><div class="row"><div class="form-group col-md-12"><label for="form1-name" class="col-form-label">Name</label><input type="text" class="form-control" id="form1-name" placeholder="Name"></div></div><div class="row"><div class="col-md-12 mb-4"><label for="form1-password">Password</label><input type="password" class="form-control" id="form1-password" placeholder="Password" required=""></div></div></form>


    <a href="#" class="btn btn-primary">Login</a>
  </div>
</div>

	'