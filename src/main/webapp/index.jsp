<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>







<html>
  <head>
    <meta charset="utf-8">
    <title>New App </title>
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">


    <style>
     h3{
       border-radius: 5px;
       padding: 4px;
     }
     .container-fulid{
       position: absolute;
       top: 0px;
       bottom: 0px;
       right:0px;
       left: 0px;
       margin: 15px;
     }
     .row{
       position: relative;
       height: 100%;
     }
     .col-xs-3{
       overflow: Scroll;
       position: absolute;
       top: 0px;
       bottom: 0px;
       right: 0px;
       left: 0px;
       z-index: 2;

     }
     .footer{
       color: white;
       background-color: black;
     }
     .col-xs-9{
       overflow: Scroll;
       position: absolute;
       top: 0px;
       bottom: 0px;
       right: 0px;
       margin: 1px;

     }
     input:required:invalid, input:focus:invalid {
   background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAeVJREFUeNqkU01oE1EQ/mazSTdRmqSxLVSJVKU9RYoHD8WfHr16kh5EFA8eSy6hXrwUPBSKZ6E9V1CU4tGf0DZWDEQrGkhprRDbCvlpavan3ezu+LLSUnADLZnHwHvzmJlvvpkhZkY7IqFNaTuAfPhhP/8Uo87SGSaDsP27hgYM/lUpy6lHdqsAtM+BPfvqKp3ufYKwcgmWCug6oKmrrG3PoaqngWjdd/922hOBs5C/jJA6x7AiUt8VYVUAVQXXShfIqCYRMZO8/N1N+B8H1sOUwivpSUSVCJ2MAjtVwBAIdv+AQkHQqbOgc+fBvorjyQENDcch16/BtkQdAlC4E6jrYHGgGU18Io3gmhzJuwub6/fQJYNi/YBpCifhbDaAPXFvCBVxXbvfbNGFeN8DkjogWAd8DljV3KRutcEAeHMN/HXZ4p9bhncJHCyhNx52R0Kv/XNuQvYBnM+CP7xddXL5KaJw0TMAF8qjnMvegeK/SLHubhpKDKIrJDlvXoMX3y9xcSMZyBQ+tpyk5hzsa2Ns7LGdfWdbL6fZvHn92d7dgROH/730YBLtiZmEdGPkFnhX4kxmjVe2xgPfCtrRd6GHRtEh9zsL8xVe+pwSzj+OtwvletZZ/wLeKD71L+ZeHHWZ/gowABkp7AwwnEjFAAAAAElFTkSuQmCC);
   background-position: right top;
   background-repeat: no-repeat;
   -moz-box-shadow: none;
 }
 input:required:valid {
   background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAepJREFUeNrEk79PFEEUx9/uDDd7v/AAQQnEQokmJCRGwc7/QeM/YGVxsZJQYI/EhCChICYmUJigNBSGzobQaI5SaYRw6imne0d2D/bYmZ3dGd+YQKEHYiyc5GUyb3Y+77vfeWNpreFfhvXfAWAAJtbKi7dff1rWK9vPHx3mThP2Iaipk5EzTg8Qmru38H7izmkFHAF4WH1R52654PR0Oamzj2dKxYt/Bbg1OPZuY3d9aU82VGem/5LtnJscLxWzfzRxaWNqWJP0XUadIbSzu5DuvUJpzq7sfYBKsP1GJeLB+PWpt8cCXm4+2+zLXx4guKiLXWA2Nc5ChOuacMEPv20FkT+dIawyenVi5VcAbcigWzXLeNiDRCdwId0LFm5IUMBIBgrp8wOEsFlfeCGm23/zoBZWn9a4C314A1nCoM1OAVccuGyCkPs/P+pIdVIOkG9pIh6YlyqCrwhRKD3GygK9PUBImIQQxRi4b2O+JcCLg8+e8NZiLVEygwCrWpYF0jQJziYU/ho2TUuCPTn8hHcQNuZy1/94sAMOzQHDeqaij7Cd8Dt8CatGhX3iWxgtFW/m29pnUjR7TSQcRCIAVW1FSr6KAVYdi+5Pj8yunviYHq7f72po3Y9dbi7CxzDO1+duzCXH9cEPAQYAhJELY/AqBtwAAAAASUVORK5CYII=);
   background-position: right top;
   background-repeat: no-repeat;
 }
  </style>
  </head>
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>

  function UserAction() {
	 /*  var data = JSON.stringify({
		  "data1": "Ramesrh@hy0789",
		  "data2": "rbvssv"
		}); */

		var data = "data1="+document.getElementById('data1').value+"&data2="+document.getElementById('data2').value+"";
		console.log(data);

    var xhr = new XMLHttpRequest();
    xhr.withCredentials = true;
    xhr.addEventListener("readystatechange", function () {
        if (this.readyState === 4) {
    //      console.log(this.responseText);
        }
      });
    xhr.open("POST", "http://192.168.0.171:8080/frontHandHandle/tasks");
    xhr.setRequestHeader("content-type", "application/x-www-form-urlencoded");
    xhr.setRequestHeader("cache-control", "no-cache");

    xhr.send(data);


}
  function dataModel(){

  var email=document.getElementById('email').value;
  var password=document.getElementById('password').value;
  var firstname=document.getElementById('firstname').value;
  var mobileno=document.getElementById('mobileno').value;
  var dob=document.getElementById('dob').value;

var res= formvalidation(email,password,mobileno,firstname,dob) ;
console.log(res);

	  var data = JSON.stringify({
		  "email": ""+document.getElementById('email').value+"",
		  "password": ""+document.getElementById('password').value+"",
		  "dob": ""+document.getElementById('dob').value+"",
		  "firstname": ""+document.getElementById('firstname').value+"",
		  "lastname": ""+document.getElementById('lastname').value+"",
		  "address": ""+document.getElementById('address').value+"",
		  "mobileno": ""+document.getElementById('mobileno').value+""

		});

		var xhr = new XMLHttpRequest();
		xhr.withCredentials = true;

		xhr.addEventListener("readystatechange", function () {
		  if (this.readyState === 4) {
		  console.log(this.responseText);
		    var myObj = JSON.parse(this.responseText);
			if (myObj.Message==="You are successfully Resgistered"){
			document.getElementById("Msgpass").innerHTML="Thanks for Register! <br> <center><p>Your User Name:"+myObj.USER_NAME+" </p> </center>";
		  }else{
			  document.getElementById("Msgpass").innerHTML="Sorry You are not registered!<br> "  ;
		  }
		  }
		});
    if (res===false){
      document.getElementById("Msgpass").innerHTML="Sorry You are not registered!<br> "  ;

    }else{
		xhr.open("POST", "http://192.168.0.171:8080/frontHandHandle/datamodel");
		xhr.setRequestHeader("content-type", "application/json");
		xhr.setRequestHeader("cache-control", "no-cache");
		xhr.send(data);
}

  }
function retriveDataByUserName(){
	hidefrom();
	  var dataofuser="";
	  var myJSON=null;
	  var html="";
	  var canvas=$("#canvas1");
	  var data = JSON.stringify({
		  "password": ""+document.getElementById('passwordretrive').value+"",
		  "username": ""+document.getElementById('username').value+""
		});

		var xhr = new XMLHttpRequest();
		xhr.withCredentials = true;

		xhr.addEventListener("readystatechange", function () {
		  if (this.readyState === 4) {
		 //   console.log(this.responseText);
		    dataofuser=this.responseText;

		    var myObj = JSON.parse(this.responseText);
		  // myJSON= JSON.stringify(this.responseText);
		//	console.log(myObj.S_ID);
			document.getElementById("canvas1").innerHTML="";
			if (myObj.Status==="UnSuccesful"){
				html="<div><h2 style="+"color:red;"+"> Sorry!... Something Gone Wrong User Id And Password Doesn't Match  "+myObj.Status+" </h2> </div>";

			}else{

html="<div class="+"container"+"><h2>Hi!!!......."+myObj.FIRST_NAME+"</h2><p>Your Details...</p><table class="+"table table-condensed"+">";
html=html+"<thead><tr><th>Student_Id</th><th>"+myObj.S_ID+"</th></tr></thead><tbody><tr><td>User_Name</td><td>"+myObj.User_Name+"</td></tr><tr><td>FirstName</td><td>"+myObj.FIRST_NAME+"</td></tr><tr><td>LastName</td>";
html=html+"<td>"+myObj.LAST_NAME+"</td></tr><tr><td>EMAIL</td><td>"+myObj.EMAIL+"</td></tr><tr><td>ADDRESS</td><td>"+myObj.Address+"</td></tr><tr><td>DOB</td><td>"+myObj.DOB+"</td></tr><tr><td>MOBILE</td><td>"+myObj.MOBILE+"</td></tr></tbody></table></div>";
			}
canvas.append(html);

		  }
		});

		xhr.open("POST", "http://192.168.0.171:8080/frontHandHandle/retrivebyusername");
		xhr.setRequestHeader("content-type", "application/json");
		xhr.setRequestHeader("cache-control", "no-cache");
		xhr.send(data);
  }

function deleteUser(){
	  var myJSON=null;
	  var html="";
	  var data = JSON.stringify({
		  "password": ""+document.getElementById('passwordretrive').value+"",
		  "username": ""+document.getElementById('username').value+""
		});

		var xhr = new XMLHttpRequest();
		xhr.withCredentials = true;

		xhr.addEventListener("readystatechange", function () {
		  if (this.readyState === 4) {
		   // console.log(this.responseText);
		    dataofuser=this.responseText;
		    var myObj = JSON.parse(this.responseText);
		  // myJSON= JSON.stringify(this.responseText);
      document.getElementById("canvas1").innerHTML="";

		    alert("Status :"+myObj.Status+"\n"+myObj.Message);

		  }
		});

		xhr.open("POST", "http://192.168.0.171:8080/frontHandHandle/edit/delete");
		xhr.setRequestHeader("content-type", "application/json");
		xhr.setRequestHeader("cache-control", "no-cache");
		xhr.send(data);

}

function deleteUsertable(username,password){
	hidefrom();
	  var myJSON=null;
	  var html="";
	  var data = JSON.stringify({
		  "password": ""+password+"",
		  "username": ""+username+""
		  });

		var xhr = new XMLHttpRequest();
		xhr.withCredentials = true;

		xhr.addEventListener("readystatechange", function () {
		  if (this.readyState === 4) {
		   // console.log(this.responseText);
		    var myObj = JSON.parse(this.responseText);
		  // myJSON= JSON.stringify(this.responseText);

		    alert("Status :"+myObj.Status+"\n"+myObj.Message);
        retrivedataall();


		  }
		});

		xhr.open("POST", "http://192.168.0.171:8080/frontHandHandle/edit/delete");
		xhr.setRequestHeader("content-type", "application/json");
		xhr.setRequestHeader("cache-control", "no-cache");
		xhr.send(data);



}
function updateUserTable(username,password){
	hidefrom();
	var myJSON=null;
	  var data = JSON.stringify({
		  "password": ""+password+"",
		  "username": ""+username+""
		});

		var xhr = new XMLHttpRequest();
		xhr.withCredentials = true;
		xhr.addEventListener("readystatechange", function () {
		  if (this.readyState === 4) {
		   // console.log(this.responseText);
		    var myObj = JSON.parse(this.responseText);
			document.getElementById("canvas1").innerHTML="";
		    if (myObj.Status==="UnSuccesful"){
		    	html="<div><h3 style="+"color:Blue;"+"> Sorry!... For User <span style="+"color:red;"+">"+$("#uusername").val()+"</span> Data DoesNot Found "+myObj.Status+" </h3> </div>";
		    	$("#canvas1").append(html);
			}else{
				$("#formdisplay").show();
		    var myObj = JSON.parse(this.responseText);
		    document.getElementById("uusername").value = myObj.User_Name;
		    document.getElementById("uemail").value = myObj.EMAIL ;
		    document.getElementById("upassword").value = myObj.PASSWORD ;
		    document.getElementById("udob").value = myObj.DOB ;
		    document.getElementById("ufirstname").value = myObj.FIRST_NAME ;
		    document.getElementById("ulastname").value = myObj.LAST_NAME ;
		    document.getElementById("umobileno").value = myObj.MOBILE
		    document.getElementById("uaddress").value = myObj.Address;
		  }
		  }
		});

		xhr.open("POST", "http://192.168.0.171:8080/frontHandHandle/retrivebyusername");
		xhr.setRequestHeader("content-type", "application/json");
		xhr.setRequestHeader("cache-control", "no-cache");
		xhr.send(data);
}



function udatedatainform(){
	var myJSON=null;
	  var data = JSON.stringify({
		  "password": ""+document.getElementById('passwordretrive').value+"",
		  "username": ""+document.getElementById('username').value+""
		});

		var xhr = new XMLHttpRequest();
		xhr.withCredentials = true;
		xhr.addEventListener("readystatechange", function () {
		  if (this.readyState === 4) {
		  //  console.log(this.responseText);
		    var myObj = JSON.parse(this.responseText);
			document.getElementById("canvas1").innerHTML="";
		    if (myObj.Status==="UnSuccesful"){
		    	html="<div><h3 style="+"color:Blue;"+"> Sorry!... For User <span style="+"color:red;"+">"+$("#uusername").val()+"</span> Data DoesNot Found "+myObj.Status+" </h3> </div>";
		    	$("#canvas1").append(html);
			}else{
				$("#formdisplay").show();
		    var myObj = JSON.parse(this.responseText);
		    document.getElementById("uusername").value = myObj.User_Name;
		    document.getElementById("uemail").value = myObj.EMAIL ;
		    document.getElementById("upassword").value = myObj.PASSWORD ;
		    document.getElementById("udob").value = myObj.DOB ;
		    document.getElementById("ufirstname").value = myObj.FIRST_NAME ;
		    document.getElementById("ulastname").value = myObj.LAST_NAME ;
		    document.getElementById("umobileno").value = myObj.MOBILE
		    document.getElementById("uaddress").value = myObj.Address;

		  }
		  }
		});

		xhr.open("POST", "http://192.168.0.171:8080/frontHandHandle/retrivebyusername");
		xhr.setRequestHeader("content-type", "application/json");
		xhr.setRequestHeader("cache-control", "no-cache");
		xhr.send(data);
}
function updatedata(){
  var email=document.getElementById('uemail').value;
  var password=document.getElementById('upassword').value;
  var firstname=document.getElementById('ufirstname').value;
  var mobileno=document.getElementById('umobileno').value;
  var dob=document.getElementById('udob').value;

  var res= formvalidation(email,password,mobileno,firstname,dob) ;
  console.log(res);

	 var data = JSON.stringify({
		  "email": ""+document.getElementById('uemail').value+"",
		  "password": ""+document.getElementById('upassword').value+"",
		  "dob": ""+document.getElementById('udob').value+"",
		  "firstname": ""+document.getElementById('ufirstname').value+"",
		  "lastname": ""+document.getElementById('ulastname').value+"",
		  "address": ""+document.getElementById('uaddress').value+"",
		  "mobileno": ""+document.getElementById('umobileno').value+"",
		  "username": ""+document.getElementById('uusername').value+""
		});

		var xhr = new XMLHttpRequest();
		xhr.withCredentials = true;

		xhr.addEventListener("readystatechange", function () {
		  if (this.readyState === 4) {
		   // console.log(this.responseText);
		    var myObj = JSON.parse(this.responseText);
		    alert("Status :"+myObj.Status+"\n"+myObj.Message);

		  }
		});
    if (res===false){
console.log("You Have Enter not Valid Entity");
    }else{
		xhr.open("POST", "http://192.168.0.171:8080/frontHandHandle/edit/update");
		xhr.setRequestHeader("content-type", "application/json");
		xhr.setRequestHeader("cache-control", "no-cache");
		xhr.send(data);
}
}
function hidefrom(){
	$("#formdisplay").hide();
}


 function retrivedataall(){
	 hidefrom();
	 var dataofuser="";
	 html="";
	 var xhr = new XMLHttpRequest();
		xhr.withCredentials = true;

		xhr.addEventListener("readystatechange", function () {
		  if (this.readyState === 4) {
		   // console.log(this.responseText);
			document.getElementById("canvas1").innerHTML="";
      var myObj = JSON.parse(this.responseText);
  html="<div class="+"container"+"><h2>AllUserData</h2><table class="+"table table-condensed"+"><table class="+"table"+"><thead><tr><th>Firstname</th><th>Lastname</th><th>Email</th><th>SId</th><th>User_Name</th><th>DOB</th><th>MOBILE</th><th>Address</th><th>DELETE</th><th>UPDATE</th></tr></thead><tbody>";

        for (var i in myObj.Data){
html+=" <tr><td>"+myObj.Data[i].FIRST_NAME+"</td><td>"+myObj.Data[i].LAST_NAME+"</td><td>"+myObj.Data[i].EMAIL+"@</td><td>"+myObj.Data[i].S_ID+"</td><td>"+myObj.Data[i].User_Name+"</td><td>"+myObj.Data[i].DOB+"</td><td>"+myObj.Data[i].MOBILE+"</td>";
html+="<td>"+myObj.Data[i].Address+"</td> <td><input type="+"button"+" class="+"btn"+" value="+"DELETE"+" onClick="+"deleteUsertable('"+myObj.Data[i].User_Name+"','"+myObj.Data[i].PASSWORD+"')"+"></td>";
html+="<td><input type="+"button"+" class="+"btn"+" value="+"UPADATE"+" onClick="+"updateUserTable('"+myObj.Data[i].User_Name+"','"+myObj.Data[i].PASSWORD+"')"+"></td></tr> ";
        }
	    	$("#canvas1").append(html);
		  }
		});

		xhr.open("POST", "http://192.168.0.171:8080/frontHandHandle/retriveall");
		xhr.setRequestHeader("content-type", "application/json");
		xhr.setRequestHeader("cache-control", "no-cache");
		xhr.send();
 }
/*
function check(){
	 hidefrom();

	        var xhr = new XMLHttpRequest();
		xhr.withCredentials = true;
		xhr.addEventListener("readystatechange", function () {
		  if (this.readyState === 4) {
		    console.log(this.responseText);

		  }
		});

		xhr.open("GET", "http://localhost:8080/frontHandHandle/tasks");
		xhr.setRequestHeader("content-type", "application/json");
		xhr.setRequestHeader("cache-control", "no-cache");
		xhr.send();


 }
function check1(){
	 hidefrom();
     var data = JSON.stringify({
		  "password": ""+document.getElementById('passwordretrive').value+"",
		  "username": ""+document.getElementById('username').value+""
		});

	        var xhr = new XMLHttpRequest();
		xhr.withCredentials = true;
		xhr.addEventListener("readystatechange", function () {
		  if (this.readyState === 4) {
		    console.log(this.responseText);

		  }
		});

		xhr.open("POST", "http://localhost:8080/frontHandHandle/hola");
		xhr.setRequestHeader("content-type", "application/json");
		xhr.setRequestHeader("cache-control", "no-cache");
		xhr.send(data);

 }

function passwordvalidation(){
  var newPassword = document.getElementById('password');
  var patt = new RegExp("^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=])(?=\\S+$).{8,}$");

   var check=patt.test(newPassword);
   console.log(check);
   if(check===false) {
       alert("password should contain atleast one number and one special character");
       return false;
   }else{
     return true;
   }
}*/
function formvalidation(email,password,mobileno,firstname,dob){
  document.getElementById('email').style.borderColor = "#ccc";
  document.getElementById('password').style.borderColor = "#ccc";
  document.getElementById('firstname').style.borderColor = "#ccc";
  document.getElementById('mobileno').style.borderColor = "#ccc";
  document.getElementById('dob').style.borderColor = "#ccc";
  if(email=== "") {
      //  alert("Error: Please Inter Email");
        document.getElementById('email').style.borderColor = "red";
        document.getElementById("semail").innerHTML="Error: Please Inter Email";
        $("#semail").show();
        $("#semail").fadeOut(5000);

        return false;
      }
    //Email form validation
    var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
      if(!email.match(mailformat))
      {
        document.getElementById('email').style.borderColor = "red";
        //alert("You have entered an invalid email address!");
        document.getElementById("semail").innerHTML="Error:You have entered an invalid email address!";
        $("#semail").show();
        $("#semail").fadeOut(5000);
        return false;
      }

  if(password=== "") {
      //  alert("Error: Please Inter password ");
        document.getElementById('password').style.borderColor = "red";
        document.getElementById("spassword").innerHTML="Error: Please Inter password";
        $("#spassword").show();
        $("#spassword").fadeOut(5000);
        return false;
      }
      //Password Validation
  var pass = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}$/;
  if(!password.match(pass))
   {
     document.getElementById('password').style.borderColor = "red";
     //alert("Not a valid Password");
     document.getElementById("spassword").innerHTML="Not a valid Password";
     $("#spassword").show();
     $("#spassword").fadeOut(5000);
     return false;
    }


  if(dob=== "") {
      //  alert("Error: Please Inter DateOfBirth ");
        document.getElementById('dob').style.borderColor = "red";
        document.getElementById("sdob").innerHTML="Error: Please enter DateOfBirth";
        $("#sdob").show();
        $("#sdob").fadeOut(5000);
        return false;
      }


  if(firstname=== "") {
        //  alert("Error: Please Inter Firstname");
          document.getElementById('firstname').style.borderColor = "red";
          document.getElementById("sfirstname").innerHTML="Error: Please enter  Firstname";
          $("#sfirstname").show();
          $("#sfirstname").fadeOut(5000);
          return false;
        }
        // Name Validation
      var na = /^[A-Za-z ]+$/;
    if(!firstname.match(na))
       {
         document.getElementById('firstname').style.borderColor = "red";
         //alert("Plese Enter Valid name Numbers Not Allowed");
         document.getElementById("sfirstname").innerHTML="Plese Enter Valid name Numbers Not Allowed";
         $("#sfirstname").show();
         $("#sfirstname").fadeOut(5000);
         return false;
        }

  if(mobileno=== "") {
        //  alert("Error: Please Inter mobileno ");
          document.getElementById('mobileno').style.borderColor = "red";
          document.getElementById("smobile").innerHTML="Error: Please Inter mobileno";
          $("#smobile").show();
          $("#smobile").fadeOut(5000);
          return false;
        }
      //Phone no Validation
    var phoneno = /^([0|\+[0-9]{1,5})?([7-9][0-9]{9})$/;
  if(!mobileno.match(phoneno))
     {
       document.getElementById('mobileno').style.borderColor = "red";
    //   alert("Not a valid Phone Number");
       document.getElementById("smobile").innerHTML="Not a valid Phone Number";
       $("#smobile").show();
       $("#smobile").fadeOut(5000);
       return false;
      }

    return true;

}
  </script>
 <!--  <body>
    <form class="work" action="http://localhost:8080/frontHandHandle/tasks" method="post">
      <input type="text" id="data1" name="data1" value="data1">
      <input type="text" id="data2" name="data2" value="data2">

      <button type="submit" name="button">cdsc</button>
    <button type="button" name="button" onclick="UserAction()">Submit</button>
    <button type="button" onclick ="datamodel()"> HttpWALA</button>
    </form> -->


  <body >

  <div class="container-fulid" >
  <center>  <h1 id ="helo"> Hello Curd Operation </h1> </center>

    <div class="row">
      <div class="col-xs-3" style="background-color:#9acfea">
              <center>  <h3 data-value="form"class="tool button" id="Msgpass">Insert From </h3></center><hr>
             <form  class="form-horizontal" method="post">
                Email<br><input type="email" class="form-control" name="email" id="email" required  placeholder="We'll never share your email with anyone else" style="width:350px;" >
                <span hidden id="semail"  style ="color:red"> </span>
                <br>Password<br><input type="password" class="form-control" name="password" id="password"   pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" required placeholder="Enter password" style="width:350px;" >
                <span hidden id="spassword"  style ="color:red"> </span>
                <br>DateOfBirth<br><input type="date" class ="form-control"name="dob" id ="dob" required style="width:350px">
                <span hidden id="sdob"  style ="color:red"> </span>
                <br>Firstname<br><input type="text" class="form-control" name="firstname"id="firstname" required placeholder="Enter firstname" style="width:350px;">
                <span hidden id="sfirstname"  style ="color:red"> </span>
                 <br>Lastname <br><input type="text" class="form-control"name="lastname" id="lastname" required placeholder="Enter lastname" style="width:350px;">
                 <span hidden id="slastname"  style ="color:red"> </span>
                 <br>mobileno<br><input type="text" class="form-control"name="mobileno" id="mobileno" pattern="([0|\+[0-9]{1,5})?([7-9][0-9]{9})" required placeholder="Enter mobileno" style="width:350px;">
                 <span hidden id="smobile"  style ="color:red"> </span>
                 <br>Address  <br><textarea class="form-control" rows="3" name="address"id="address" style="width:350px;"></textarea>
                 <br><input type="button" onclick="dataModel()" value ="Register"> </input>
               </form>
      </div>
      <div class="col-xs-9" id="canvas" style="background-color:lightslategrey" >
    <center>  <h3 data-value="form"class="tool button">Retrive BY User name and password </h3></center><hr>
  <input type="button" class="btn btn-danger"style ="float: right" value="DELETE" onClick="deleteUser()">
  <input type="button" class="btn btn-primary"style ="float: right" id="updatebuttonshow" value="UPDATE" onClick="udatedatainform()">
    <input type="button" class="btn btn-info"style ="float: right" value="ALLDATA" onClick="retrivedataall()">
<!--  <input type="button" class="btn btn-danger"style ="float: right" value="check" onClick="check()">
  <input type="button" class="btn btn-danger"style ="float: right" value="check1" onClick="check1()">-->


        <form  class="form-horizontal" method="post">
          <br>UserName<br>  <input type="text" class="form-control" name="username"id="username" placeholder="Enter username" style="width:450px;" required>
           <br>Password<br><input type="password" class="form-control" name="passwordretrive" id="passwordretrive"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" required  placeholder="Enter password" style="width:450px;" required>
            <br>  <input type="button" onclick="retriveDataByUserName()" value ="Retrive">  </input>
            <input type="reset"  value ="ResetButton"></input>

          </form>
          <div id="canvas1">
          </div>

          <div id="formdisplay" style="display:none">
            <center>  <h3 data-value="form"class="tool button" id="Msgpass">Update From </h3></center><hr>
             <form  class="form-horizontal" method="post">
              <input type="button" class="btn btn-info" onclick="hidefrom()" style ="float: right" value ="HIdeUpdateForm"> </input>
              <input type="button" class="btn btn-info" onclick="updatedata()" style ="float: right" value ="UpdateChanges"> </input><br>

              Email<br><input type="email" class="form-control" name="uemail" id="uemail"  style="width:450px;" >
               <br>USERNAME<br><input type="text" class="form-control" name="uusername" id="uusername" style="width:450px;" disabled>
                <br>Password<br><input type="password" class="form-control" name="upassword" id="upassword" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" required  style="width:450px;">
                <br>DateOfBirth<br><input type="date" class ="form-control"name="udob" id ="udob" style="width:450px" >
             	  <br>Firstname<br><input type="text" class="form-control" name="ufirstname"id="ufirstname" style="width:450px;">
                 <br>Lastname <br><input type="text" class="form-control"name="ulastname" id="ulastname"  style="width:450px;">
                 <br>mobileno<br><input type="text" class="form-control"name="umobileno" id="umobileno" style="width:450px;">
                 <br>Address<br><textarea class="form-control" rows="2" name="uaddress"id="uaddress" style="width:450px;"></textarea>
               <br>
               </form>
          </div>

      </div>
    </div>
    <footer class="footer">
      <p>Powered by US</a></p>
    </footer>
  </div>
</body>
</html>
