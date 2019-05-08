<?php
if($_COOKIE['log'] == ''){
  header('Location: /reg.php');
  exit();
}
?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <?php
    $website_title = "New Article";
    include_once "blocks/head.php";?>
  </head>
  <body>
    <?php include_once "blocks/header.php";?>
    <main role="main" class="container">
      <div class="row">
        <div class="col-md-8">
          <h3>Add new article:</h3>
          <form class="" method="post">
            <div class="form-group">
              <label for="InputTitle">Title</label>
              <input type="text" class="form-control" id="InputTitle" name="InputTitle" placeholder="">
            </div>
            <div class="form-group">
              <label for="InputIntro">Intro</label>
              <textarea class="form-control" id="InputIntro" name="InputIntro"></textarea>
            </div>
            <div class="form-group">
              <label for="InputText">Text</label>
              <textarea class="form-control" id="InputText" name="InputText"></textarea>
            </div>
            <div class="alert alert-danger" id="errorBlock"></div>
            <button type="button" id="new_art" class="btn btn-success">Add</button>
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
      $('#new_art').click(function () {
        var title = $("#InputTitle").val();
        var intro = $("#InputIntro").val();
        var text = $("#InputText").val();

        $.ajax({
          url: 'ajax/add_article.php',
          type: 'POST',
          cache: false,
          data:{'InputTitle' : title, 'InputIntro' : intro, 'InputText' : text},
          datatype: 'html',
          success: function(data) {
            if(data == 'Done'){
              $('#new_art').text('All Done');
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
