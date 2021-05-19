<?php 

include("db.php");
session_start();
$pagename="smart basket";               //Create and populate a variable called $pagename 
echo "<link rel=stylesheet type=text/css href=mystylesheet.css>";  //Call in stylesheet 
 
echo "<title>".$pagename."</title>";    //display name of the page as window title 
 
echo "<body>"; 
 
include ("headfile.html");              //include header layout file  
 
echo "<h4>".$pagename."</h4>";          //display name of the page on the web page 

// Remove from the basket
if (isset($_POST['delnb']))   // //if the value of the product id to be deleted (which was posted through the hidden field) is set
{
$delprodId=$_POST['delnb'];//capture the posted product id and assign it to a local variable $delprodid
unset($_SESSION['basket'][$delprodId]);//unset the cell of the session for this posted product id variable
}
echo "1 item removed from the basket<br>";//display a "1 item removed from the basket" message

$to =0; 
if (isset($_POST['h_prodid'])) { 

//capture the ID of selected product using the POST method and the $_POST superglobal variable
//and store it in a new local variable called $newprodid
$newprodid=$_POST['h_prodid'];

//capture the required quantity of selected product using the POST method and $_POST superglobal variable
//and store it in a new local variable called $reququantity

$reququantity =$_POST['p_quantity'];



//display the value of the product id, for debugging purposes
//echo "<p> ID of selected product : ".$newprodid;

//Display quantity of selected product, for debugging purposes
//echo"<p>Display quantity of selected product : ".$reququantity;

//create a new cell in the basket session array. Index this cell with the new product id.
//Inside the cell store the required product quantity
$_SESSION['basket'][$newprodid]=$reququantity;
echo "<p>1 item added <br>";

}
else { 
    echo "Basket unchanged.... <br>"; 
}

//Created the html table to display items in the basket
echo "<table style='border: solid black 1px'>";; 
echo "<th>Product Name</th>";
echo "<th>Price</th>";
echo "<th>Qunatity</th>";
echo "<th>Subtotal</th>";
echo "<th>Remove Product</th>";
echo "</tr>";
 
include("footfile.html");               //include head layout 
 
echo "</body>"; 
?> 