/**
 * Created by Alex.Titov on 19.08.2015.
 */
/**
 * Created by Alex.Titov on 19.08.2015.
 */
function checkContactsCheckboxes(){
    var s = document.getElementsByName("ch1");
    var mas = [];
    for (var i = 0; i < s.length; i++ ) {
        if (s[i].checked) {

            mas.push(s[i].id);
        }

    }
    if (mas.length == 0){
        return location.href='/';
    }
    else{
        return location.href = '/removeContact/' + mas;
    }
}



