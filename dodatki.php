<div id="dodatki">
    <button onclick="hide('hideD');recognize('Frytki');">Frytki</button>
    <button onclick="hide('hideD');recognize('Nuggetsy');">Nuggetsy</button>
    <?php include 'ingredientsDodatki.php';?>
    <hr/>
    
    <?php
        $connect = mysqli_connect("localhost", "root","","restaurant");  
        
        if(isset($_POST['query'])){
            $query = $_POST['query'];
            mysqli_query($connect,$query);
            echo "<h2>".$query."</h2>";
        }
    ?> 
</div>