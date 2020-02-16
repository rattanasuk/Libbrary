<?php
$n = $_POST["search"];
$dbhost = 'localhost';
$dbuser = 'Library';
$dbpass = 'Y8RMDBrVwjEZSwi1';
$dbname = 'library';
$conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);

if(! $conn ){
	die('Could not connect: ' . mysqli_error());
}
$sql = "SELECT * 
	FROM (students
	RIGHT OUTER JOIN borrows USING(StudentCode))
	RIGHT OUTER JOIN book_infos USING(BookNo)
	WHERE book_infos.BookName LIKE '%$n%'";
	
$result=mysqli_query($conn,$sql);
if(mysqli_num_rows($result)==0){
	print("ชื่อหนังสือไม่ถูกต้อง");
	exit();
}
?>


<?php
while($row=mysqli_fetch_assoc($result))
{ 
?>
<body>
<div style="border: 2px solid Tomato;">
ข้อมูลหนังสือ: <?php print($row["BookName"]);?><br />
สถานะ: <?php
if($row["ReturnDate"] ==0){
print("  ไม่ถูกยืม");
}
else if($row["ReturnDate"] !=0){
print(" ถูกยืม");
}
?><br />
ผู้ยืม: <?php
if($row["StudentName"] !=0){
print("  ว่าง");
}
else if($row["ReturnDate"] !=0){
print($row["StudentName"]);
}
?><br />
สถานะ: <?php print("คืนวันที่ ");
print($row["ReturnDate"]);

if($row["ReturnDate"] ==0){
	print("  ว่าง");
}
?>
</div>
</body><br />	

<?php
}
mysqli_close($conn);
?>