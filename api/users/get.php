<?php
// include_once '../../config/Database.php';

$database = new Database();
$connection = $database->connect();

$query = 'SELECT
    id_user,
    name,
    surname
  FROM
    user';

$stmt = $connection->prepare($query);
$stmt->execute();

$users_arr = array();
$users_arr['data'] = array();

if ($stmt->rowCount() > 0) {

  while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
    extract($row);

    $user = array(
      'id_user' => $id_user,
      'name' => $name,
      'surname' => $surname
    );

    array_push($users_arr['data'], $user);
  }

}
echo json_encode($users_arr);

?>
