<?php
$servername = "mysql-service";
$username = "redhat";
$password = "redhat123";
$database = "world_x";
mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);
$conn = new mysqli($servername, $username, $password, $database);
echo "Connected successfully<br><br>";
?>
<?php
$query = "select * from city limit 100;";
$queryResult = $conn->query($query);
echo "<table>";
while ($queryRow = $queryResult->fetch_row()) {
    echo "<tr>";
    for($i = 0; $i < $queryResult->field_count; $i++){
        echo "<td>$queryRow[$i]</td>";
    }
    echo "</tr>";
}
echo "</table>";
$conn->close();
?>
