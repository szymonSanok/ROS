<div class="ingredients" id="hide">
    <h1 id="rodzaj"></h1>
    <h2 id="query"></h2>
    <div class="ingredients-sections">
        <div class="ingredients-section">
            <h3>Mięso</h3>
            <div class="ingredients-choice">
                <input type="radio" name="meat" value="drob" id="drob"><label for="drob">Drób</label><br>
                <input type="radio" name="meat" value="wol" id="wol"><label for="wol">Wołowina</label><br> 
                <input type="radio" name="meat" value="mix" id="mix"><label for="mix">Mieszany</label><br>
            </div>
        </div>

        <div class="ingredients-section">
            <h3>Sos</h3>
            <div class="ingredients-choice">
                <input type="radio" name="sos" value="lagodny" id="lagodny"><label for="lagodny">Łagodny</label><br> 
                <input type="radio" name="sos" value="mieszany" id="mieszany"><label for="mieszany">Mieszany</label><br> 
                <input type="radio" name="sos" value="ostry" id="ostry"><label for="ostry">Ostry</label><br>
            </div>
        </div>

        <div class="ingredients-section">
            <h3>Dodatki</h3>
            <div class="ingredients-choice">
                <input type="checkbox" name="vege" value="cebula" id="cebula"><label for="cebula">Cebula</label><br>
                <input type="checkbox" name="vege" value="pomidor" id="pomidor"><label for="pomidor">Pomidor</label><br> 
                <input type="checkbox" name="vege" value="ogorek" id="ogorek"><label for="ogorek">Ogórek</label><br>
                <input type="checkbox" name="vege" value="czerwona" id="czerwona"><label for="czerwona">K.Czerwona</label><br>
                <input type="checkbox" name="vege" value="biala" id="biala"><label for="biala">K.Biała</label><br>
            </div>
        </div>
    </div>
    <input type="text" placeholder="Specjalne wymagania"><br>

    <input type="submit" value="Zapisz" class="orders-confirm-btn" onclick="makeQueryKebab();goBack('navigation');"/>
    <div id="status"></div>
</div>