<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <?php
    $website_title = "Contacts";
    include_once "blocks/head.php";?>
  </head>
  <body>
    <?php include_once "blocks/header.php";?>
    <main role="main" class="container">
      <div class="row">
        <div class="col-md-8">
          <h3>Feedback:</h3>
          <form class="" method="post">
            <div class="form-group">
              <label for="username">Name</label>
              <input type="text" class="form-control" id="username" name="username" placeholder="">
            </div>
            <div class="form-group">
              <label for="mail">Email address</label>
              <input type="mail" class="form-control" id="mail" name="mail" aria-describedby="emailHelp" placeholder="enter email">
              <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
            </div>
            <div class="form-group">
              <label for="msg">Message</label>
              <textarea type="text" class="form-control" id="msg" name="msg" placeholder=""></textarea>
            </div>
            <div class="alert alert-danger" id="errorBlock"></div>
            <button type="button" id="msg_send" class="btn btn-success">Send</button>
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
      $('#msg_send').click(function () {
        var name = $("#username").val();
        var email = $("#mail").val();
        var text = $("#msg").val();

        $.ajax({
          url: 'ajax/mail.php',
          type: 'POST',
          cache: false,
          data:{'username' : name, 'email' : email, 'msg': text},
          datatype: 'html',
          success: function(data) {
            if(data == 'Done'){
              $('#reg_user').text('All Done');
              $('#errorBlock').hide();
              alert('Feedback sent!')
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
