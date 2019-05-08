<div class="container">
  <header class="blog-header py-3">
    <div class="row flex-nowrap justify-content-between align-items-center">
      <div class="col-4 pt-1">
        <a class="text-muted" href="#"></a>
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

  <div class="nav-scroller py-1 mb-2">
    <nav class="nav d-flex justify-content-between">
      <a class="p-2 text-muted" href="#">World</a>
      <a class="p-2 text-muted" href="#">U.S.</a>
      <a class="p-2 text-muted" href="#">Technology</a>
      <a class="p-2 text-muted" href="#">Design</a>
      <a class="p-2 text-muted" href="#">Culture</a>
      <a class="p-2 text-muted" href="#">Business</a>
      <a class="p-2 text-muted" href="#">Politics</a>
      <a class="p-2 text-muted" href="#">Opinion</a>
      <a class="p-2 text-muted" href="#">Science</a>
      <a class="p-2 text-muted" href="#">Health</a>
      <a class="p-2 text-muted" href="#">Style</a>
      <a class="p-2 text-muted" href="#">Travel</a>
    </nav>
  </div>
</div>
