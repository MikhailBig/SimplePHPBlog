<?php
setcookie('log', $email, time() - 3600 * 24 * 30, "/");
echo true;
