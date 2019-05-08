<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <?php
    require_once 'mysql_connect.php';
    $sql = 'SELECT * FROM `articles` WHERE `id` = :id';
    $id = $_GET['id'];
    $query = $pdo->prepare($sql);
    $query->execute(['id' => $id]);
    $article = $query->fetch(PDO::FETCH_OBJ);

    $website_title = $article->title;
    include_once "blocks/head.php";
    ?>
  </head>
  <body>
    <?php include_once "blocks/header.php"?>

    <main role="main" class="container">
      <div class="row">
        <div class="col-md-8 blog-main">
          <div class="jumbotron">
            <h1><?=$article->title?></h1>
            <p><?=$article->intro?>
            <br><br>
            <?=$article->text?>
            </p>
            <p class='blog-post-meta'><?=$article->author?>
              <?php
              $date = date('d ', $article->date);
              $array = ["Jan", "Fab", "Mar", "Apr", "May", "June", "Jule", "Aug", "Sep", "Oct", "Nov", "Dec"];
              $date .= $array[date('n', $article->date)-1];
              $date .= date(' H:i', $article->date);
              ?>
            <p class='blog-post-meta'><?=$date?>
          </div>
          <!-- /.blog-post -->

          <nav class="blog-pagination">
            <a class="btn btn-outline-primary" href="#">Older</a>
            <a class="btn btn-outline-secondary disabled" href="#" tabindex="-1" aria-disabled="true">Newer</a>
          </nav>
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
