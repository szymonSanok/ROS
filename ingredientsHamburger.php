<div class="ingredients" id="hideH">
    <h1 id="rodzaj"></h1>
    <h2 id="query"></h2>

    <div class="ingredients-sections">
        <div class="ingredients-section">
            <h2>Dodatki</h2>
            <div class="ingredients-choice">
                <input type="checkbox" name="vege" value="cebula" id="cebulah"><label for="cebulah">Cebula</label><br> 
                <input type="checkbox" name="vege" value="pomidor" id="pomidorh"><label for="pomidorh">Pomidor</label><br> 
                <input type="checkbox" name="vege" value="ogorek" id="ogorekh"><label for="ogorekh">Ogórek</label><br>
                <input type="checkbox" name="vege" value="prazona" id="prazonah"><label for="prazonah">Prażona C.</label><br>
            </div>
        </div>
    </div>

    <input type="text" placeholder="Specjalne wymagania"><br>
    <input type="submit" value="Zapisz" class="orders-confirm-btn" onclick="makeQueryHamburger();goBack('navigation');">
    
</div>