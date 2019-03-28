<?php
// include_once '../../config/Database.php';

$database = new Database();
$connection = $database->connect();

$query = 'SELECT
    b.id_book,
    b.name as book_name,
    b.isbn,
    r.id_reservation,
    r.date_from,
    r.date_to,
    r.id_user,
    u.name as user_name,
    u.surname as user_surname
  FROM
    book b
  LEFT JOIN
    reservation r ON b.id_book = r.id_book
  LEFT JOIN
    user u ON r.id_user = u.id_user';

$stmt = $connection->prepare($query);
$stmt->execute();

$books_arr = array();
$books_arr['data'] = array();

if ($stmt->rowCount() > 0) {

  while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
    extract($row);

    $book = array(
      'id_book' => $id_book,
      'book_name' => $book_name,
      'isbn' => $isbn,
      'id_reservation' => $id_reservation,
      'date_from' => $date_from,
      'date_to' => $date_to,
      'id_user' => $id_user,
      'user_name' => $user_name,
      'user_surname' => $user_surname
    );

    array_push($books_arr['data'], $book);
  }

}
echo json_encode($books_arr);

?>
