<div class="ingredients" id="hideZ">
    <h1 id="rodzaj"></h1>
    <h2 id="query"></h2>
    <div class="ingredients-sections">
        <div class="ingredients-section">
            <h2>Sos</h2>
            <div class="ingredients-choice">
                <input type="checkbox" name="sos" value="lagodny" id="lagodnyz"><label for="lagodnyz">Łagodny</label><br> 
                <input type="checkbox" name="sos" value="ostry" id="ostryz"><label for="ostryz">Ostry</label><br>
                <input type="checkbox" name="sos" value="ketchup" id="ketchupz"><label for="ketchupz">Ketchup</label><br>
                <input type="checkbox" name="sos" value="1000wysp" id="1000wyspz"><label for="1000wyspz">1000 wysp</label><br>
                <input type="checkbox" name="sos" value="Majonez" id="majonezz"><label for="majonezz">Majonez</label><br>
            </div>
        </div>

        <div class="ingredients-section">
            <h2>Dodatki</h2>
            <div class="ingredients-choice">
            <input type="checkbox" name="vege" value="szczypior" id="szczypiorz"><label for="szczypiorz">Szczypior</label><br> 
            <input type="checkbox" name="vege" value="pomidor" id="pomidorz"><label for="pomidorz">Pomidor</label><br> 
            <input type="checkbox" name="vege" value="ogorek" id="ogorekz"><label for="ogorekz">Ogórek</label><br>
            <input type="checkbox" name="vege" value="kukurydza" id="kukurydzaz"><label for="kukurydzaz">Kukurydza</label><br>
            <input type="checkbox" name="vege" value="prazona" id="prazonaz"><label for="prazonaz">Prażona C.</label><br>
            </div>
        </div>
    </div>
    
    <input type="text" placeholder="Specjalne wymagania"><br>
    <input type="submit" value="Zapisz" class="orders-confirm-btn" onclick="makeQueryZapiekanka();goBack('navigation');">
</div>
