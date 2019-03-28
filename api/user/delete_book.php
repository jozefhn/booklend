<?php
# include_once '../../config/Database.php';

$database = new Database();
$connection = $database->connect();

# TODO: Verify non-empty user input

# Sanitize user input
$id_user = htmlspecialchars(strip_tags($item_id));
$id_book = htmlspecialchars(strip_tags($id_book));

# Verify book exists
$query = 'SELECT
    id_book
  FROM
    book
  WHERE id_book = ?';

$stmt = $connection->prepare($query);
$stmt->bindParam(1, $id_book);
$stmt->execute();
if ($stmt->rowCount() == 0) {
  echo json_encode(array(
    'message' => 'Book with id ' . $id_book .' does not exist.')
  );
  return;
}

# Verify user exists
$query = 'SELECT
    id_user
  FROM
    user u
  WHERE u.id_user = ?';
$stmt = $connection->prepare($query);
$stmt->bindParam(1, $id_user);
$stmt->execute();
if ($stmt->rowCount() == 0) {
  echo json_encode(array(
    'message'=> 'User with id ' . $id_user . ' does not exist')
  );
  return;
}

# Verify that book is correctly lent
$query = 'SELECT
    id_book
  FROM
    reservation r
  WHERE r.id_book = ?
  AND r.id_user = ?';

$stmt = $connection->prepare($query);
$stmt->bindParam(1, $id_book);
$stmt->bindParam(2, $id_user);
$stmt->execute();
if ($stmt->rowCount() == 0) {
  echo json_encode(array(
    'message' => 'User ' . $id_user . ' has not lent book ' . $id_book . '.')
);
  return;
}

# Delete reservation
# TODO: store deleted reservations in archive table ?
$query = 'DELETE FROM
    reservation
  WHERE
    id_book = :id_book
  AND
    id_user = :id_user';

$stmt = $connection->prepare($query);
$stmt->bindParam(':id_book', $id_book);
$stmt->bindParam(':id_user', $id_user);

if ($stmt->execute()) {
  return true;
}

echo json_encode(array('Error: '=> '$stmt->error'));



?>
