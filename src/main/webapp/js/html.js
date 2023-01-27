
window.onload = function(){
    setInterval(change,2000);
}

var count = 0;

var img_array = new Array("title_img/1.jpg","title_img/2.jpg","title_img/3.jpg","title_img/4.jpg");

function change(){
    var img = document.getElementById("01");
    img.src= img_array[count];
    count ++;
    if (count >= 4){
        count = 0;
    }
}

