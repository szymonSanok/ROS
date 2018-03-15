<div id="dodatki">
    <div class="order-product-type">
        <button onclick="hide('hideD');recognize('Frytki');">Frytki</button>
        <button onclick="hide('hideD');recognize('Nuggetsy');">Nuggetsy</button>
    </div>
    <?php include 'ingredientsDodatki.php';?>
    
    <?php
        $connect = mysqli_connect("localhost", "root","","restaurant");  
        
        if(isset($_POST['query'])){
            $query = $_POST['query'];
            mysqli_query($connect,$query);
            echo "<h2>".$query."</h2>";
        }
    ?> 
</div>