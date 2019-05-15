<div class="container mb-4">
  <header class="blog-header py-3">
    <div class="row flex-nowrap justify-content-between align-items-center">
      <div class="col-4 pt-1">
        <a class="text-muted" href="/contacts.php">Contacts</a>
      </div>
      <div class="col-4 text-center">
        <a class="blog-header-logo text-dark" href="/">PHP BLOG</a>
      </div>
      <div class="col-4 d-flex justify-content-end align-items-center">
        <?php
        if($_COOKIE['log'] == ''):
        ?>
        <a class="btn btn-sm btn-outline-primary mr-2" href="/auth.php">Log in</a>
        <a class="btn btn-sm btn-outline-secondary" href="/reg.php">Sign up</a>
        <?php
        else:
        ?>
        <a class="btn btn-sm btn-outline-secondary mr-2" href="/article.php">New Article</a>
        <a class="btn btn-sm btn-outline-primary mr-2" href="/auth.php">My profile</a>
        <?php
        endif;
        ?>
      </div>
    </div>
  </header>
</div>
