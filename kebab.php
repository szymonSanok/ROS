<div id="kebab">
    <div class="order-product-type">
        <button onclick="hide('hide');recognize('Ciasto');">Ciasto</button>
        <button onclick="hide('hide');recognize('Bulka');">Bułka</button>
        <button onclick="hide('hide');recognize('Tortilla');">Tortilla</button>
        <button onclick="hide('hide');recognize('Doner');">Doner</button>   
        <button onclick="hide('hide');recognize('Danie');">Danie</button> 
        <button onclick="hide('hide');recognize('Box');">Box</button> 
    </div>
    <?php include 'ingredientsKebab.php';?>
    
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