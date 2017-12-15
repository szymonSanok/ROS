<?php include_once('header.php'); ?>
<body>
<li><button onclick="licz();"><img src="img/"/>Zatwierdź</button></li>   
<h2 id="zliczanie"></h2> 

<?php
        $connect = mysqli_connect("localhost", "root","","restaurant");  
        if(isset($_POST['orders'])){
            $orders = $_POST['orders'];
            mysqli_query($connect,$query);
            echo "<h2>".$orders."</h2>";
            
            /*NAGŁÓWKI*/
		echo "<table class=\"ex\" width=\"96%\" cellpadding=\"10\" border=1>"; 
		echo "<tr class=\"bold\">"; 
		echo "<td>".'ID'."</td>";
		echo "<td>".'Rodzaj'."</td>"; 
		echo "<td>".'Mieso'."</td>";
		echo "<td>".'Sos'."</td>";
		echo "<td>".'Brak'."</td>";
        echo "<td>".'Data'."</td>";
        echo "<td>".'Zamowienie'."</td>";
		echo "</tr>";
            
            /*Zawartość*/
        for ($i=0; $i<=10; $i++){	
	$row = mysqli_fetch_assoc($query);
		echo "<tr>"; 
		echo "<td>".$row['id_kebab']."</td>";
        echo "<td>".$row['bread']."</td>";
		echo "<td>".$row['meat']."</td>"; 
		echo "<td>".$row['sosy']."</td>";
		echo "<td>".$row['vege']."</td>";
		echo "<td>".$row['date']."</td>";
        echo "<td>".$row['nr_zamowienia']."</td>";
		echo "</tr>"; 
		} 
echo "</table>";
        }
	?> 
	
	</body>
</html>