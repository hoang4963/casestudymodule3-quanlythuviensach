/*function myFunction() {
    // Declare variables 
    var input, filter, table, tr, td1 , td2, i, txtValue, txtValue2;
    input = document.getElementById("myInput");
    filter = input.value.toUpperCase();
    table = document.getElementById("myTable");
    tr = table.getElementsByTagName("tr");

    // Loop through all table rows, and hide those who don't match the search query
    for (i = 0; i < tr.length; i++) {
        td1 = tr[i].getElementsByTagName("td")[0];
        td2 = tr[i].getElementsByTagName("td")[1];
        if (td1 ) {
            txtValue = td1.textContent || td1.innerText;
            txtValue2= td2.textContent || td2.innerText;
            if ((txtValue.toUpperCase().indexOf(filter) > -1) || 
                    (txtValue2.toUpperCase().indexOf(filter) > -1) ) {
                tr[i].style.display = "";
                console.log("run ok");
            } else {
                tr[i].style.display = "none";
            }
        } 
    }
}*/

function myFunction2() {
    // Declare variables 
    let input, filter, table, tr, tds;
    input = document.getElementById("myInput");
    filter = input.value.toUpperCase();
    table = document.getElementById("myTable");
    tr = table.getElementsByTagName("tr");

    // Loop through all table rows, and hide those who don't match the search query
    for (let i = 0; i < tr.length; i++) {
        tds = tr[i].getElementsByTagName("td");
        let txtValues =[];
        for(let j=0; j<tds.length; j++){
            txtValues.push(tds[j].textContent || tds[j].innerText);
        }
        for(let j=0; j<tds.length; j++){
            if ((txtValues[j].toUpperCase().indexOf(filter) > -1)  ) {
                tr[i].style.display = "";
                console.log(txtValues[j]);
                console.log(filter);
                break;
            } else {
                tr[i].style.display = "none";
            }
        }
    }
}

// Handle the Modal displaying depend on button LOOK UP in each cells of Table
    // Get the modal
    let modals = document.getElementsByClassName("myModal");
    // Get the button that opens the modal
    let btns = document.getElementsByClassName("myBtn");
    for(let i =0;i<btns.length;i++){
        // When the user clicks on the button, open the modal 
            console.log(i);
        btns[i].onclick = function() {
            console.log(i);
            modals[i].style.display = "block";
        };
        // When the user clicks anywhere outside of the modal, close it
        modals[i].onclick = function(event) {
            if (event.target === modals[i]) {
              modals[i].style.display = "none";
            }
        };
    }