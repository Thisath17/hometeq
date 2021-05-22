<?php
session_start();

$pagename="log in"; //Create and populate a variable called $pagename
echo "<link rel=stylesheet type=text/css href=mystylesheet.css>"; //Call in stylesheet
echo "<title>".$pagename."</title>"; //display name of the page as window title
echo "<body>";
include ("headfile.html"); //include header layout file
echo "<h4>".$pagename."</h4>"; //display name of the page on the web page

// Creating the login form
echo "<form action ='login_process.php' method = post><br>";
// Creating the HTML table to include the form
echo "<table style='border: 0px' ; align ='center'>";

// Creating the Email lable and the text field in the HTML table
echo "<tr>";
echo "<td style='border: 0px'><label for='email'>E mail </label></td>";   // E mail
echo "<td style='border: 0px'><input type='text' name='email'></td>";
echo "</tr>";

// Creating the Password lable and the text field in the HTML table
echo "<tr>";
echo "<td style='border: 0px'><label for='pwd'>Password </label></td>";   // Password
echo "<td style='border: 0px'><input type='password' name='Password'></td>";
echo "</tr>";

echo"<tr>";
// Creating the clear button
echo "<td style='border: 0px'><input type=submit name='clearbtn' value='Clear Form' id='submitbtn'></td>";

// Creating the submit button
echo "<td style='border: 0px'><input type=submit name='logInbtn' value='log In' id='submitbtn'></td>";
echo "</tr>";

echo "</table>";

include("footfile.html"); //include footer layout
echo "</body>";
?>