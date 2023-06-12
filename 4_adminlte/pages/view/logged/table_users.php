<div class="card">
  <div class="card-header">
    <h3 class="card-title">Użytkownicy</h3>
  </div>
  <!-- /.card-header -->
  <div class="card-body">
    <table id="example1" class="table table-bordered table-striped">
      <thead>
      <tr>
        <th>Nazwisko</th>
        <th>Imię</th>
        <th>Rola</th>
        <th>Ostatnie logowanie (status)</th>
        <th>Data utworzenia</th>
      </tr>
      </thead>
      <tbody>
<?php
      require_once "../../scripts/connect.php";
      $sql = "SELECT u.firstName, u.lastName, u.logo, u.created_at createdUser, l.created_at lastLog, l.status, r.role FROM users u inner join logs l on u.id = l.user_id inner join roles r on u.role_id = r.id ORDER BY l.created_at DESC";
      $sth = $dbh->prepare($sql);
      $sth->execute();

      $result = $sth->fetchAll(pdo::FETCH_ASSOC);
      //print_r($result);

foreach ($result as $key => $value) {
	echo <<< USERLOG
     <tr>
        <td>{$result[$key]["lastName"]}</td>
        <td>{$result[$key]["firstName"]}</td>
        <td>{$result[$key]["role"]}</td>
        <td>{$result[$key]["lastLog"]}</td>
        <td>{$result[$key]["createdUser"]}</td>
      </tr>
USERLOG;
}
?>

      </tbody>
      <tfoot>
      <tr>
        <th>Nazwisko</th>
        <th>Imię</th>
        <th>Rola</th>
        <th>Ostatnie logowanie (status)</th>
        <th>Data utworzenia</th>
      </tr>
      </tfoot>
    </table>
  </div>
  <!-- /.card-body -->
</div>