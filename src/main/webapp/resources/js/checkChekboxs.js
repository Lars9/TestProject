/**
 * Created by Alex.Titov on 19.08.2015.
 */
function check(){
    var s = document.getElementsByName("ch");
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
       return location.href = '/remove/' + mas;
    }
}



