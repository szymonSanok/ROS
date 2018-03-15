<div id="hamburger">
    <div class="order-product-type">
        <button onclick="hide('hideH');recognize('Hamburger');">Hamburger</button>
        <button onclick="hide('hideH');recognize('Cheeseburger');">Cheeseburger</button>
        <button onclick="hide('hideH');recognize('MegaBurger');">MegaBurger</button> 
        <button onclick="hide('hideH');recognize('Drwal');">Drwal</button> 
    </div>
    <?php include 'ingredientsHamburger.php';?>

    
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