<?php 

include("db.php");

$pagename="smart basket";               //Create and populate a variable called $pagename 
echo "<link rel=stylesheet type=text/css href=mystylesheet.css>";  //Call in stylesheet 
 
echo "<title>".$pagename."</title>";    //display name of the page as window title 
 
echo "<body>"; 
 
include ("headfile.html");              //include header layout file  
 
echo "<h4>".$pagename."</h4>";          //display name of the page on the web page 

//capture the ID of selected product using the POST method and the $_POST superglobal variable 
//and store it in a new local variable called $newprodid
$newprodid=$_POST['h_prodid'];

//capture the required quantity of selected product using the POST method and $_POST superglobal variable  
//and store it in a new local variable called $reququantity
$reququantity = $_POST['p_quality'];

//Display id of selected product
//echo "<p>"."Selected product ID: ".$newprodid."<br>";
//Display quantity of selected product
//echo "<p>"."Quentity of selected product: ".$reququantity."<br>";

//create a new cell in the  basket session array. Index this cell with the new product id. 
//Inside the cell store the required product quantity  
if (isset($newprodid)){
    $_SESSION['basket'][$newprodid]=$reququantity; 
    echo "<p><b>1 item added</b>"."<br>"; 
}else {
    echo "<p><b>Basket Uncahnged...</b>"."<br>";
}

echo "<table>";
echo "<tr>";
echo "</tr>";
echo "</table>";
 
include("footfile.html");               //include head layout 
 
echo "</body>"; 
?> 