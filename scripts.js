
//funkcja ukrywająca content
    function hide(id) {

       var divelement = document.getElementById(id);

       if (divelement.style.display == 'none' || divelement.style.display == 'block')
           divelement.style.display = 'none';
          divelement.style.display = 'block';
    }

//zegar
var data1 = new String();
    function counter() {
        var today = new Date();
        var day = today.getDate();
        var month = today.getMonth()+1;
        var year = today.getFullYear();
        var hour = today.getHours();
        var minute = today.getMinutes();
        var second = today.getSeconds();
        
        if (day<10){
             day = "0" + day;
        }
        if (month<10){
             month = "0" + month;
        }
        if (hour<10){
             hour = "0" + hour;
        }
        if (minute<10){
             minute = "0" + minute;
        }
        if (second<10){
             second = "0" + second;
        }
        document.getElementById("clock").innerHTML = day + "-" + month + "-" + year + " | " + hour + ":" + minute + ":" + second;
        data1=day + "-" + month + "-" + year + " | " + hour + ":" + minute + ":" + second;
        setTimeout("counter()",1000);
    }

var type = new String();
//rozpoznawanie kebaba
    function recognize(kebab){  
        type=kebab;
        document.getElementById("rodzaj").innerHTML=type;
    }

function order(){
    var hr = new XMLHttpRequest();
    var url = "orders.php";

    var order = new String();
    query = "SELECT * FROM kebab WHERE nr_zamowienia=1;";
    
    var vars = "query="+query;

    hr.open("POST", url, true);
    hr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    hr.onreadystatechange = function() {
        if(hr.readyState == 4 && hr.status == 200) {
            var return_data = hr.responseText;
            document.getElementById("status").innerHTML = return_data;
        }
    }
    hr.send(vars); // Actually execute the request
    document.getElementById("status").innerHTML = "processing...";
    
}
var licznik = 0;
function licz(){   
    licznik+=1;
     document.getElementById("zliczanie").innerHTML="Zamówienie nr "+licznik;
}

//separowanie zapytań do string

//KEBAB

function makeQueryKebab(){
        var hr = new XMLHttpRequest();
        var url = "kebab.php";
    
        var meat = new String();
        var vege = new String();
        var sos = new String();
        var query = new String();
        meat = document.querySelector('input[name="meat"]:checked').value;
        sos = document.querySelector('input[name="sos"]:checked').value;
        
        var inputElements = document.getElementsByName('vege');
        for(var i=0; inputElements[i];i++){
            if(inputElements[i].checked){
        vege += inputElements[i].value+" ";
            }
       }

        query="INSERT INTO kebab (bread,meat,sosy,vege,date,nr_zamowienia) VALUES ('"+type+"','"+meat+"','"+sos+"','"+vege+"','"+data1+"','"+licznik+"');";
    
        var vars = "query="+query;

        hr.open("POST", url, true);
        hr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        hr.onreadystatechange = function() {
            if(hr.readyState == 4 && hr.status == 200) {
                var return_data = hr.responseText;
                document.getElementById("status").innerHTML = return_data;
            }
        }
        hr.send(vars); // Actually execute the request
        document.getElementById("status").innerHTML = "processing...";
        
       // window.location.href="collect.php?queryK="+query;
    //document.getElementById("query").innerHTML=query;
    }

//ZAPIEKANKA
    function makeQueryZapiekanka(){
        var hr = new XMLHttpRequest();
        var url = "zapiekanka.php";
        
        var query = new String();
        var vege = new String();
        var sos = new String();
             
       var inputElements = document.getElementsByName('sos');
       for(var i=0; inputElements[i];i++){
            if(inputElements[i].checked){
        sos += inputElements[i].value+" ";
            }
       }
        
        var inputElements = document.getElementsByName('vege');
        for(var i=0; inputElements[i];i++){
            if(inputElements[i].checked){
        vege += inputElements[i].value+" ";
            }
       }
        query="INSERT INTO zapiekanki (bread,sosy,vege,date,nr_zamowienia) VALUES ('"+type+"','"+sos+"','"+vege+"','"+data1+"','"+licznik+"');";
        var vars = "query="+query;
    
        hr.open("POST", url, true);
        hr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        hr.onreadystatechange = function() {
            if(hr.readyState == 4 && hr.status == 200) {
                var return_data = hr.responseText;
                document.getElementById("status").innerHTML = return_data;
            }
        }
        hr.send(vars); // Actually execute the request
        document.getElementById("status").innerHTML = "processing...";
    }

//HAMBURGER
    function makeQueryHamburger(){
        var hr = new XMLHttpRequest();
        var url = "hamburger.php";
        
        var query = new String();
        var vege = new String();
             
        var inputElements = document.getElementsByName('vege');
        for(var i=0; inputElements[i];i++){
            if(inputElements[i].checked){
        vege += inputElements[i].value+" ";
            }
       }
        query="INSERT INTO hamburger (bread,vege,date,nr_zamowienia) VALUES ('"+type+"','"+vege+"','"+data1+"','"+licznik+"');";
        var vars = "query="+query;
    
        hr.open("POST", url, true);
        hr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        hr.onreadystatechange = function() {
            if(hr.readyState == 4 && hr.status == 200) {
                var return_data = hr.responseText;
                document.getElementById("status").innerHTML = return_data;
            }
        }
        hr.send(vars); // Actually execute the request
        document.getElementById("status").innerHTML = "processing...";
    }

//DODATKI
    function makeQueryDodatki(){
        var hr = new XMLHttpRequest();
        var url = "dodatki.php";
        
        var query = new String();
        var size = new String();
             
        size = document.querySelector('input[name="size"]:checked').value;
        query="INSERT INTO dodatki (rodzaj,data,nr_zamowienia) VALUES ('"+type+" "+size+"','"+data1+"','"+licznik+"');";
        var vars = "query="+query;
    
        hr.open("POST", url, true);
        hr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        hr.onreadystatechange = function() {
            if(hr.readyState == 4 && hr.status == 200) {
                var return_data = hr.responseText;
                document.getElementById("status").innerHTML = return_data;
            }
        }
        hr.send(vars); // Actually execute the request
        document.getElementById("status").innerHTML = "processing...";
    }

/////////////////////////////////////////////////////////////////////

//funkcja cofnij
function goBack(id) {
    var divelement = new String();
    divelement = document.getElementById(id);
     
    if (document.getElementById(id).id == 'kebab'){
        document.getElementById('navigation').style.display='block';
        divelement.style.display='block';
        document.getElementById('list').style.display='none';
    }
    if (document.getElementById(id).id == 'navigation'){
        document.getElementById('list').style.display='block';
        divelement.style.display='none';
        document.getElementById('kebab').style.display='none';
        document.getElementById('zapiekanka').style.display='none';
        document.getElementById('hamburger').style.display='none';
        document.getElementById('dodatki').style.display='none';
        document.getElementById('napoje').style.display='none';
        document.getElementById('piwo').style.display='none';
        document.getElementById('lody').style.display='none';
        document.getElementById('granita').style.display='none';
    }
     if (document.getElementById(id).id == 'zapiekanka'){
        document.getElementById('navigation').style.display='block';
        document.getElementById('zapiekanka').style.display='block';
        document.getElementById('list').style.display='none';
     }
         if (document.getElementById(id).id == 'hamburger'){
        document.getElementById('navigation').style.display='block';
        divelement.style.display='block';
        document.getElementById('list').style.display='none';
     }
         if (document.getElementById(id).id == 'dodatki'){
        document.getElementById('navigation').style.display='block';
        divelement.style.display='block';
        document.getElementById('list').style.display='none';
     }
         if (document.getElementById(id).id == 'napoje'){
        document.getElementById('navigation').style.display='block';
        divelement.style.display='block';
        document.getElementById('list').style.display='none';
     }
         if (document.getElementById(id).id == 'piwo'){
        document.getElementById('navigation').style.display='block';
        divelement.style.display='block';
        document.getElementById('list').style.display='none';
     }
             if (document.getElementById(id).id == 'lody'){
        document.getElementById('navigation').style.display='block';
        divelement.style.display='block';
        document.getElementById('list').style.display='none';
     }
             if (document.getElementById(id).id == 'granita'){
        document.getElementById('navigation').style.display='block';
        divelement.style.display='block';
        document.getElementById('list').style.display='none';
     }
}

//////////////////////////////////////////////////////////

//FUNKCJA ODŚWIEŻ

function refresh(){
    $('#refresh').load('table.php');
    return false;
}
