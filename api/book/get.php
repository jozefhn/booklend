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
    user u ON r.id_user = u.id_user
  WHERE b.id_book = ?';

$stmt = $connection->prepare($query);
$stmt->bindParam(1, $item_id);
$stmt->execute();

if ($stmt->rowCount() > 0) {

  $row = $stmt->fetch(PDO::FETCH_ASSOC);
  extract($row);

  $book_arr = array(
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
}
else {
  $book_arr = array('message'=> 'Book not found.');
}

echo json_encode($book_arr);

?>
