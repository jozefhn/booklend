# booklend

Simple REST API in PHP


## Data model


### user
* id_user pk
* name
* surname

### book
* id_book pk
* name
* isbn

### reservation
* id_reservation pk
* id_user fk
* id_book fk
* date_from
* date_to


### REST API map
   -----------------------------------------------------------------
    Method    URL                             Function
   --------- ------------------------------- -----------------------
     GET      /users                          user list
     GET      /users/<user_id>                user
     GET      /users/<user_id>/books          book list lent to user
     POST     /users/<user_id>/books          lend a book to user
     DELETE   /users/<user_id>/books/book_id  return a book by user

     GET      /books                          list of books
     GET      /books/<book_id>                book
   -----------------------------------------------------------------
