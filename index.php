<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <?php
    $website_title = "PHP blog";
    include_once "blocks/head.php"?>
  </head>
  <body>
    <?php include_once "blocks/header.php"?>

    <main role="main" class="container">


      <div class="row">
        <div class="col-md-8 blog-main">
          <?php
          require_once 'mysql_connect.php';
          $sql = 'SELECT * FROM `articles` ORDER BY `date` DESC';
          $query = $pdo->query($sql);
          while($row = $query->fetch(PDO::FETCH_OBJ)){
            echo "<div class='blog-post'>
              <h2 class='blog-post-title'>$row->title</h2>
              <p class='blog-post-meta'>$row->author
              <p>$row->intro
              <p><a class='btn btn-default' href='/news.php?id=$row->id' title='$row->title'>Read more...</a>
              </div>";
          }
          ?>
          <!-- /.blog-post -->
       </div><!-- /.blog-main -->
       <?php include_once "blocks/aside.php"?>

      </div><!-- /.row -->
    </main>
    <?php include_once "blocks/footer.php"?>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>
