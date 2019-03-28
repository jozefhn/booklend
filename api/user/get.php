<?php
// include_once '../../config/Database.php';

$database = new Database();
$connection = $database->connect();

$query = 'SELECT
    id_user,
    name,
    surname
  FROM
    user
  WHERE id_user = ?';

$stmt = $connection->prepare($query);
$stmt->bindParam(1, $item_id);
$stmt->execute();

if ($stmt->rowCount() > 0) {

  $row = $stmt->fetch(PDO::FETCH_ASSOC);
  extract($row);

  $user_arr = array(
    'id_user' => $id_user,
    'name' => $name,
    'surname' => $surname
  );
}
else {
  $user_arr = array('message'=> 'User not found.');
}

echo json_encode($user_arr);

?>
