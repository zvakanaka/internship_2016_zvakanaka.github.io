<h1>  
<?php 
$navs = array("Home"=>"index.php", "Assignments"=>"assignments.php", "About me"=>"about.php");
  foreach($navs as $KEY => $VAL) {
      if (strcasecmp(ltrim($_SERVER['PHP_SELF'], "/"), $VAL) == 0) {
      	echo "$KEY";
      }
  } ?>
</h1>
<nav>
  <ul>
  <?php 
  foreach($navs as $KEY => $VAL) {
  	echo "<li><a href=\"" . "$VAL" . "\""; 
      if (strcasecmp(ltrim($_SERVER['PHP_SELF'], "/"), $VAL) == 0) {
      	echo "class=\"on\"";
      }
      echo ">" . "$KEY" . "</a></li>";
  } ?>
  </ul>
</nav>
