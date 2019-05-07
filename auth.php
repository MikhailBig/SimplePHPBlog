<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <?php
    $website_title = "Authentication";
    include_once "blocks/head.php";?>
  </head>
  <body>
    <?php include_once "blocks/header.php";?>
    <main role="main" class="container">
      <div class="row">
        <div class="col-md-8">
          <?php
          if($_COOKIE['log'] == ''):
          ?>
          <h3>Log in:</h3>
          <form class="" method="post">
            <div class="form-group">
              <label for="InputEmail1">Email address</label>
              <input type="email" class="form-control" id="InputEmail" name="InputEmail"  placeholder="">
            </div>
            <div class="form-group">
              <label for="InputPassword">Password</label>
              <input type="password" class="form-control" id="InputPassword" name="InputPassword" placeholder="">
            </div>
            <div class="alert alert-danger" id="errorBlock"></div>
            <button type="button" id="auth_user" class="btn btn-success">Ok</button>
          </form>
        <?php
        else:
        ?>
        <h2><?php echo 'Welcome back '.$_COOKIE['log'].' !'?></h2>
        <button type="button" id="exit_user" class="btn btn-danger">Log out</button>
        <?php endif;?>
        </div>

       <?php include_once "blocks/aside.php";?>
      </div><!-- /.row -->
    </main>
    <?php include_once "blocks/footer.php";?>
    <script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script>
    $('#exit_user').click(function () {
      $.ajax({
        url: 'ajax/exit.php',
        type: 'POST',
        cache: false,
        data:{},
        datatype: 'html',
        success: function(data) {
          document.location.reload(true);
        }
      })
    });
      $('#auth_user').click(function () {
        var email = $("#InputEmail").val();
        var password = $("#InputPassword").val();

        $.ajax({
          url: 'ajax/auth.php',
          type: 'POST',
          cache: false,
          data:{'InputEmail' : email, 'InputPassword': password},
          datatype: 'html',
          success: function(data) {
            if(data == 'Done'){
              $('#auth_user').text('All Done');
              $('#errorBlock').hide();
              document.location.reload(true);
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
