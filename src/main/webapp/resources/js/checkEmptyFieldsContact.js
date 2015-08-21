/**
 * Created by Александр on 19.08.15.
 */
function checkAllEmptyContact(){
    var phone = document.getElementById("phone").value;
    if (phone == '')
    {
        alert("All fields must be filled");
        return false;
    }
    return true;
}