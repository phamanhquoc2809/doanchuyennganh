function kiemtra(){
    var email = document.getElementById("email").value;
    var matkhau = document.getElementById("matkhau").value;
    var re_matkhau = document.getElementById("re_matkhau").value;
    var dienthoai = document.getElementById("dienthoai").value;
    var hoten =document.getElementById("hoten").value;

    x=true;
    y = /^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/;
    z = /^([a-zA-Z0-9]{6,15})$/;
    v = /^0([0-9]{9})$/;
    a = /([a-zA-Z])/;

    
    if(!hoten.match(a)){
        x1=document.getElementById("a5");
        x1.innerHTML="Họ tên là chữ viết liền không dấu!";
        x1.style.fontSize="9pt";
        x1.style.color="red";
        x1.style.display="block";
        x=false;
    }else {
       x1=document.getElementById("a5");
       x1.style.display="none";
    }

    if(!email.match(y)){
      x1=document.getElementById("a1");
      x1.innerHTML="Email không hợp lệ!";
      x1.style.fontSize="9pt";
      x1.style.color="red";
      x1.style.display="block";
      x=false;
    }else {
     x1=document.getElementById("a1");
     x1.style.display="none";
    }
    if(!matkhau.match(z)){
     x1=document.getElementById("a2");
        x1.innerHTML="Mật khẩu dài từ 6-15 ký tự! ";
        x1.style.fontSize="9pt";
        x1.style.color="red";
        x1.style.display="block";
        x=false;
     }else{
        x1=document.getElementById("a2");
        x1.style.display="none"; 
     }
    if(matkhau != re_matkhau){
        x1=document.getElementById("a3");
        x1.innerHTML="Mật khẩu không khớp! ";
        x1.style.fontSize="9pt";
        x1.style.color="red";
        x1.style.display="block";
        x=false;
    }else{
        x1=document.getElementById("a3");
        x1.style.display="none";
    }
    if(!dienthoai.match(v)){
        x1=document.getElementById("a4");
           x1.innerHTML="Số điện thoại không hợp lệ";
           x1.style.fontSize="9pt";
           x1.style.color="red";
           x1.style.display="block";
           x=false;
        }else{
           x1=document.getElementById("a4");
           x1.style.display="none"; 
        }
    return x;
 }

function kiemtra_email(email){
    var xmlhttp=new XMLHttpRequest();
    xmlhttp.onreadystatechange=function() {
      if (this.readyState==4 && this.status==200) {
        document.getElementById("a1").innerHTML=this.responseText;
      }
    };
    xmlhttp.open("GET","page/main/kiemtra_email.php?email="+email,true);
    xmlhttp.send();
}