<?php
# include_once '../../config/Database.php';

$database = new Database();
$connection = $database->connect();

# get POST data
$data = json_decode(file_get_contents("php://input"));

# TODO: verify non-empty user input

# Sanitize user input data
$data_clean = array();
$data_clean['id_book'] = htmlspecialchars(strip_tags($data->id_book));
$data_clean['id_user'] = htmlspecialchars(strip_tags($data->id_user));
$data_clean['date_from'] = htmlspecialchars(strip_tags($data->date_from));
$data_clean['date_to'] = htmlspecialchars(strip_tags($data->date_to));

# Verify book exists
$query = 'SELECT
    id_book
  FROM
    book
  WHERE id_book = ?';

$stmt = $connection->prepare($query);
$stmt->bindParam(1, $data_clean['id_book']);
$stmt->execute();
if ($stmt->rowCount() == 0) {
  echo json_encode(array(
    'message' => 'Book with id ' . $data_clean['id_book'] .' does not exist.')
  );
  return;
}

# Verify that book is not already lent
$query = 'SELECT
    id_book
  FROM
    reservation r
  WHERE r.id_book = ?';

$stmt = $connection->prepare($query);
$stmt->bindParam(1, $data_clean['id_book']);
$stmt->execute();
if ($stmt->rowCount() != 0) {
  echo json_encode(array(
    'message' => 'Book with id ' . $data_clean['id_book'] . ' is already lent.')
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
$stmt->bindParam(1, $data_clean['id_user']);
$stmt->execute();
if ($stmt->rowCount() == 0) {
  echo json_encode(array(
    'message'=> 'User with id ' . $data_clean['id_user'] . ' does not exist')
  );
  return;
}

# Insert new reservation
$query = 'INSERT INTO
    reservation
  SET
    id_book = :id_book,
    id_user = :id_user,
    date_from = :date_from,
    date_to = :date_to';

$stmt = $connection->prepare($query);
$stmt->bindParam(':id_book', $data_clean['id_book']);
$stmt->bindParam(':id_user', $data_clean['id_user']);
$stmt->bindParam(':date_from', $data_clean['date_from']);
$stmt->bindParam(':date_to', $data_clean['date_to']);

if ($stmt->execute()) {
  return true;
}

echo json_encode(array('Error: '=> '$stmt->error'));



?>
