<?php
require('Header.php');
?>
<html>
    <head>
        <title>USING METUBE</title>
    </head>
    
    <body>
    
    <div class='sform'>
    <?php
	if($_SESSION["username"]){
	echo "<p> Hi ".$_SESSION["username"]."! Learn How to use metube here :)</p>";
	}
	?>
	<br/><br/>
    <p>METUBE----Share it if its worth it :(</p><br/>
    <p>(Works best on Safari,Chrome,firefox,IE 9+)</p>
    <br/><br/>
    <p>Thanks for using METUBE </p>
    <br/><br/>
    <p> developed by <a href="http://ngundap.weebly.com/" target="_blank">Nanda Gundapaneni</a> </p>
    <br/>
    <br/>
	<script>(function(d, s, id) {
  	var js, fjs = d.getElementsByTagName(s)[0];
  	if (d.getElementById(id)) return;
  	js = d.createElement(s); js.id = id;
 	js.src = "//connect.facebook.net/en_US/all.js#xfbml=1&appId=314178331941974";
  	fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));</script>
	
	<div class="fb-like" data-send="true" data-width="450" data-show-faces="true" data-font="lucida grande"></div>
    </div>        
    </body>
    </html>
    
    