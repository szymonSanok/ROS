<div id="zapiekanka">
    <div class="order-product-type">
        <button onclick="hide('hideZ');recognize('Klasyczna');">Klasyczna</button>
        <button onclick="hide('hideZ');recognize('Prazona');">Prażona C.</button>
        <button onclick="hide('hideZ');recognize('Warzywna');">Warzywna</button> 
        <button onclick="hide('hideZ');recognize('Szynka');">Szynka</button>
        <button onclick="hide('hideZ');recognize('Salami');">Salami</button>   
        <button onclick="hide('hideZ');recognize('Kebab');">Kebab</button> 
    </div>
    <?php include 'ingredientsZapiekanka.php';?>

    <?php
        $connect = mysqli_connect("localhost", "root","","restaurant");  
        
        if(isset($_POST['query'])){
            $query = $_POST['query'];
            mysqli_query($connect,$query);
            echo "<h2>".$query."</h2>";
        }
    ?> 
    <div id="clock"></div>
</div>