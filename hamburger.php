<div id="hamburger">
    <button onclick="hide('hideH');recognize('Hamburger');">Hamburger</button>
    <button onclick="hide('hideH');recognize('Cheeseburger');">Cheeseburger</button>
    <button onclick="hide('hideH');recognize('MegaBurger');">MegaBurger</button> 
    <button onclick="hide('hideH');recognize('Drwal');">Drwal</button> 
    <?php include 'ingredientsHamburger.php';?>
    <hr/>
    
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