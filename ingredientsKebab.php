<div class="ingredients" id="hide">
    <h2 id="rodzaj"></h2>
    <h2 id="query"></h2>
    <input type="radio" name="meat" value="drob" />Drób<br/> 
    <input type="radio" name="meat" value="wol" />Wołowina<br/> 
    <input type="radio" name="meat" value="mix" />Mieszany<br/>
    <hr/>
    <input type="radio" name="sos" value="lagodny" />Łagodny<br/> 
    <input type="radio" name="sos" value="mieszany" />Mieszany<br/> 
    <input type="radio" name="sos" value="ostry" />Ostry<br/>
    <hr/>
    <input type="checkbox" name="vege" value="cebula" />Cebula<br/> 
    <input type="checkbox" name="vege" value="pomidor" />Pomidor<br/> 
    <input type="checkbox" name="vege" value="ogorek" />Ogórek<br/>
    <input type="checkbox" name="vege" value="czerwona" />K.Czerwona<br/>
    <input type="checkbox" name="vege" value="biala" />K.Biała<br/>
    <hr/>
    <input type="text">
    <hr/>
    <input type="submit" value="Zapisz" onclick="makeQueryKebab();goBack('navigation');"/>
    <div id="status"></div>
</div>