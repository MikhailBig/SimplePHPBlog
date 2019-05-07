<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <?php
    $website_title = "Registration";
    include_once "blocks/head.php";?>
  </head>
  <body>
    <?php include_once "blocks/header.php";?>
    <main role="main" class="container">
      <div class="row">
        <div class="col-md-8">
          <h3>Sign up:</h3>
          <form class="" method="post">
            <div class="form-group">
              <label for="InputName">Name</label>
              <input type="text" class="form-control" id="InputName" name="InputName" placeholder="">
            </div>
            <div class="form-group">
              <label for="InputEmail1">Email address</label>
              <input type="email" class="form-control" id="InputEmail" name="InputEmail" aria-describedby="emailHelp" placeholder="enter email">
              <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
            </div>
            <div class="form-group">
              <label for="InputPassword1">Password</label>
              <input type="password" class="form-control" id="InputPassword1" name="InputPassword1" placeholder="password">
            </div>
            <div class="form-group">
              <label for="InputPassword2">Repeat password</label>
              <input type="password" class="form-control" id="InputPassword2" name="InputPassword2" placeholder="repeat password">
            </div>
            <div class="alert alert-danger" id="errorBlock"></div>
            <button type="button" id="reg_user" class="btn btn-success">Register</button>
          </form>
        </div>

       <?php include_once "blocks/aside.php";?>
      </div><!-- /.row -->
    </main>
    <?php include_once "blocks/footer.php";?>
    <script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script>
      $('#reg_user').click(function () {
        var name = $("#InputName").val();
        var email = $("#InputEmail").val();
        var password1 = $("#InputPassword1").val();
        var password2 = $("#InputPassword2").val();

        $.ajax({
          url: 'ajax/reg.php',
          type: 'POST',
          cache: false,
          data:{'InputName' : name, 'InputEmail' : email, 'InputPassword1': password1, 'InputPassword2': password2},
          datatype: 'html',
          success: function(data) {
            if(data == 'Done'){
              $('#reg_user').text('All Done');
              $('#errorBlock').hide();
            } else {
              $('#errorBlock').show();
              $('#errorBlock').text(data);
            }
          }
        })
      });
    </script>
  </body>
</html>
