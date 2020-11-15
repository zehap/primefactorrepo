<?php
   if(isset($_GET['num']))
   {
      $num=$_GET['num'];
      $flag=1;
      if($num<1 && $num>100000)$flag=0;
      if($flag==1)
      {
         for($i=2;$i<=$num;$i++)
         {
            if($num%$i==0)
            {
               $flag_prime=1;
               for($j=2;$j<$i;$j++)
               {
                  if($i%$j==0)$flag_prime=0;
               }
               if($flag_prime==1)
               {
                  $max=$j;
               }
            }
         }

      }
      else
      {
         echo "Out of range";
      }
   }
?>
<html>
<body>
   <form method="GET" action="phptest.php">
      <input type="text" name="num">
      <input type="submit">
   </form>
   <input type="text" value="<?=$max?>">
</body>
</html
