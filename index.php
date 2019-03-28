<?php

header('Access-Controll-Allow-Origin: *');
header('Access-Controll-Allow-Methods: GET, POST, PUT, DELETE');
header('Content-Type: application/json');
header('Access-Control-Allow-Headers: Access-Control-Allow-Origin,
  Access-Control-Allow-Methods, Authorization, X-Reqested-With');

$request_method = $_SERVER['REQUEST_METHOD'];
$request_uri = $_SERVER['REQUEST_URI'];


# Basic URL mapping
#
# http:#localhost/~jozef/booklend/<collection_name>/<item_id>/
#               0 1      2        3                 4         5
# TODO: trim URL, so you get URL starting with /booklend/....
#       fixing wrong indexes on different URL setup
$url = rtrim($request_uri, '/');
$url = filter_var($request_uri, FILTER_SANITIZE_URL);
$url = explode('/', $url);

$collection_name = $url[3];
$item_id = (array_key_exists(4, $url)) ? $url[4] : null;


# Handle users collection
# /booklend/users/...
if ($url[3] == "users") {

  # /booklend/users
  # ===============
  if ($item_id == null) {
    # get user list
    if ($request_method == 'GET') {
      include_once 'config/Database.php';
      include_once 'api/users/get.php';
    }
    # create user
    elseif ($request_method == 'POST') {
      # TODO
      include_once './api/unimplemented.php';
    }
    # update user list
    elseif ($request_method == 'PUT') {
      # TODO
      include_once './api/unimplemented.php';
    }
    # delete user list
    elseif ($request_method == 'DELETE') {
      # TODO
      include_once './api/unimplemented.php';
    }
    else {
      http_response_code(403);
    }

  }

  # /booklend/users/<id>
  # ====================
  elseif ($url[5] == null) {

    # get user info
    if ($request_method == 'GET') {
      include_once 'config/Database.php';
      include_once 'api/user/get.php';
    }
    # create user
    elseif ($request_method == 'POST') {
      # TODO
      include_once './api/unimplemented.php';
    }
    # update user
    elseif ($request_method == 'PUT') {
      # TODO
      include_once './api/unimplemented.php';
    }
    # delete user
    elseif ($request_method == 'DELETE') {
      # TODO
      include_once './api/unimplemented.php';
    }
    else {
      http_response_code(403);
    }
  }

  # /booklend/users/<id>/books
  # ==========================
  elseif ($url[5] == 'books' && $url[6] == null) {
    # get users book list
    if ($request_method == 'GET') {
      include_once 'config/Database.php';
      include_once 'api/user/get_books.php';
    }
    # add book to users book list
    elseif ($request_method == 'POST') {
      include_once 'config/Database.php';
      include_once 'api/user/post_books.php';
    }
    # update all books in users book list
    elseif ($request_method == 'PUT') {
      # TODO
      include_once './api/unimplemented.php';
    }
    # delete users book list
    elseif ($request_method == 'DELETE') {
      # TODO
      include_once './api/unimplemented.php';
    }
    else {
      http_response_code(403);
    }
  }

  # /booklen/users/<id>/books/<id>
  # ==============================
  elseif ($url[6] != null) {
    # get book from user's book list
    if ($request_method == 'GET') {
      # TODO
      include_once './api/unimplemented.php';
    }
    elseif ($request_method == 'POST') {
      # TODO
      include_once './api/unimplemented.php';
    }
    # update all books in users book list
    elseif ($request_method == 'PUT') {
      # TODO
      include_once './api/unimplemented.php';
    }
    # delete book from user's book list
    elseif ($request_method == 'DELETE') {
      $id_book = $url[6];
      include_once 'config/Database.php';
      include_once 'api/user/delete_book.php';
    }
    else {
      http_response_code(403);
    }
  }

  else {
    http_response_code(404);
  }
}

# Handle books collection
# /booklend/books/...
elseif ($url[3] == "books") {

  # /booklend/books/
  # ================
  if ($item_id == null) {
    # get book list
    if ($request_method == 'GET') {
      include_once './config/Database.php';
      include_once './api/books/get.php';
    }
    # create a new book
    elseif ($request_method == 'POST') {
      # TODO
      include_once './api/unimplemented.php';
    }
    # update list of books
    elseif ($request_method == 'PUT') {
      # TODO
      include_once './api/unimplemented.php';
    }
    # delete all books
    elseif ($request_method == 'DELETE') {
      # TODO
      include_once './api/unimplemented.php';
    }
  }


  # /booklend/books/<id>
  # ====================
  else {

    # get book info
    if ($request_method == 'GET') {
      include_once './config/Database.php';
      include_once './api/book/get.php';
    }
    # create book
    elseif ($request_method == 'POST') {
      # TODO
      include_once './api/unimplemented.php';
    }
    # update book
    elseif ($request_method == 'PUT') {
      # TODO
      include_once './api/unimplemented.php';
    }
    # delete book
    elseif ($request_method == 'DELETE') {
      # TODO
      include_once './api/unimplemented.php';
    }
    else {

    }
  }

}

# uknown collection
else {
  http_response_code(404);
}

?>
