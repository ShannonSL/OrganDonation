<?php

function redirect_to($location) {
    // echo 'inside redirect';exit;
  if($location != NULL ) {
    // var_dump($location);
    header('Location: '.$location);
    exit();
  }
}
