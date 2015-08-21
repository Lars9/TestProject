/**
 * Created by Александр on 19.08.15.
 */
function checkAllEmpty(){
    var fio = document.getElementById("fio").value;
    if (fio == '')
    {
       alert("All fields must be filled");
       return false;
    }
    return true;
}