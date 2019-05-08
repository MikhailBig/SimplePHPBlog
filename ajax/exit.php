<?php
setcookie('log', "", time() - 3600 * 24 * 30, "/");
unset($_COOKIE['log']);
echo true;
