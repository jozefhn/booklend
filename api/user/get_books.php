<?php
// include_once '../../config/Database.php';

$database = new Database();
$connection = $database->connect();

$query = 'SELECT
    b.id_book,
    b.name,
    b.isbn,
    r.id_reservation,
    r.date_from,
    r.date_to
  FROM
    book b
  JOIN
    reservation r on b.id_book = r.id_book
  WHERE r.id_user = ?';

$stmt = $connection->prepare($query);
$stmt->bindParam(1, $item_id);
$stmt->execute();

$books_arr = array();
$books_arr['data'] = array();

if ($stmt->rowCount() > 0) {

  while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
    extract($row);

    $book = array(
      'id_book' => $id_book,
      'name' => $name,
      'isbn' => $isbn
    );

    array_push($books_arr['data'], $book);
  }

}
echo json_encode($books_arr);

?>
