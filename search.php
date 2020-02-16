<?php
$dbhost = 'localhost';
$dbuser = 'Library';
$dbpass = 'Y8RMDBrVwjEZSwi1';
$dbname = 'library';
$conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);

if(! $conn ){
	die('Could not connect: ' . mysqli_error());
}
$sql = "SELECT * FROM borrows";
$sql = " ORDER BY StudentCode DESC";
$result = mysqli_query($conn,$sql);
?>
<html>
<head>
<script type="text/javascript">
function validateForm(){
	var t1=document.getElementById("search").value;
	if (t1.length == 0) {
		alert("กรุณาใส่่ชื่อหนังสือ");
		return false;
	}
}
</script>
</head>
<body>
<h3>ระบบยืม-คืนหนังสือ</h3>
<form action="do_search.php" onsubmit="return validateForm()" method="post">
	</select><br />
	<input type="text" name="search" id="search" placeholder="กรุณาใส่่ชื่อหนังสือ" /><br />
	<input type="submit" value="ตรวจสอบหนังสือ" />
</form>
<h3>ข้อมูลสถานะหนังสือ</h3>
<form action="do_search.php"  method="post">
	</select><br />
	<input type="submit" value="ตรวจสอบ" />
</form>
<h3>รายชื่อหนังสือที่มี</h3>
<form action="do_search.php"  method="post">
	</select><br />
	<ul>
	<li>math</li>
	<li>Science</li>
	<li>Engligh</li>
	<li>Thai-language</li>
	<li>Information and communication technology (ICT)</li>
	<li>reading	</li>	
	<li>computer science</li>
	<li>art</li>
	<li>physics</li>
	<li>chemistry</li>
	<li>health and hygeine</li>
	</ul> 
</form>
<?php
mysqli_close($conn);
?>
</body>
</html>