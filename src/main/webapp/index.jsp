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
     .col-xs-5{
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
     .col-xs-7{
       overflow: hidden;
       position: absolute;
       top: 0px;
       bottom: 0px;
       right: 0px;
       margin: 1px;

     }
     .btn{
        height:80px;
        width: 350px;
        padding: 4px;

     }
  </style>
  </head>
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
          console.log(this.responseText);
        }
      }); 
    xhr.open("POST", "http://localhost:8080/frontHandHandle/tasks");
    xhr.setRequestHeader("content-type", "application/x-www-form-urlencoded");
    xhr.setRequestHeader("cache-control", "no-cache");

    xhr.send(data);
       

}
  function dataModel(){
	  
	  var data = JSON.stringify({
		  "email": ""+document.getElementById('email').value+"",
		  "password": ""+document.getElementById('password').value+"",
		  "dob": ""+document.getElementById('dob').value+"",
		  "rollno": ""+document.getElementById('rollno').value+"",
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
		  }
		});

		xhr.open("POST", "http://localhost:8080/frontHandHandle/datamodel");
		xhr.setRequestHeader("content-type", "application/json");
		xhr.setRequestHeader("cache-control", "no-cache");
		xhr.send(data);
	  
	  
  }
function retriveDataByUserName(){
	  var dataofuser="";
	  var myJSON=null
	  var data = JSON.stringify({
		  "password": ""+document.getElementById('passwordretrive').value+"",
		  "username": ""+document.getElementById('username').value+""  
		});

		var xhr = new XMLHttpRequest();
		xhr.withCredentials = true;

		xhr.addEventListener("readystatechange", function () {
		  if (this.readyState === 4) {
		    console.log(this.responseText);
		    dataofuser=this.responseText;
		    var myObj = JSON.parse(this.responseText);
		  // myJSON= JSON.stringify(this.responseText);
			console.log(myObj.S_ID);
			document.getElementById("demo").innerHTML="<div><tableborder="+"1"+"><tr><th>Student_Id</th><th>"+myObj.S_ID+"</th></tr><tr><th>UserName</th><th>"+myObj.User_Name+"</th></tr></table></div>";
		  }

		  
		});

		xhr.open("POST", "http://localhost:8080/frontHandHandle/retrivebyusername");
		xhr.setRequestHeader("content-type", "application/json");
		xhr.setRequestHeader("cache-control", "no-cache");
		xhr.send(data);
		
	  
	  
  }
  function insertfrom(){
	  
	  
	  
	  
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
      <div class="col-xs-5" style="background-color:#9acfea">
              <center>  <h3 data-value="form"class="tool button">Insert From </h3></center><hr>
             <form  class="form-horizontal" method="post">
              Email<br><input type="email" class="form-control" name="email" id="email" placeholder="We'll never share your email with anyone else" style="width:450px;">
                <br>Password<br><input type="password" class="form-control" name="password" id="password" placeholder="Enter password" style="width:450px;">
                <br>DateOfBirth<br><input type="date" class ="form-control"name="dob" id ="dob" style="width:450px">
                <br>ROLLNO<br>     <input type="text" class="form-control" name="rollno"id="rollno" placeholder="Enter rollno" style="width:450px;">
             	  <br>Firstname<br>  <input type="text" class="form-control" name="firstname"id="firstname" placeholder="Enter firstname" style="width:450px;">
                 <br>Lastname <br>  <input type="text" class="form-control"name="lastname" id="lastname" placeholder="Enter lastname" style="width:450px;">
                 <br>mobileno<br>   <input type="text" class="form-control"name="mobileno" id="mobileno" placeholder="Enter mobileno" style="width:450px;">
                 <br>Address  <br>  <textarea class="form-control" rows="3" name="address"id="address" style="width:450px;"></textarea>
                 <br>  <input type="button" onclick="dataModel()" value ="Register"> </input>
               </form>
      </div>
      <div class="col-xs-7" id="canvas" style="background-color:lightslategrey" >
        <center>  <h3 data-value="form"class="tool button">Retrive BY User name and password </h3></center><hr>
        <form  class="form-horizontal" method="post">
          <br>UserName<br>  <input type="text" class="form-control" name="username"id="username" placeholder="Enter username" style="width:450px;">
           <br>Password<br><input type="password" class="form-control" name="passwordretrive" id="passwordretrive" placeholder="Enter password" style="width:450px;">
            <br>  <input type="button" onclick="retriveDataByUserName()" value ="Retrive">  </input>
            <input type="reset"  value ="ResetButton">  </input>
            
          </form>
          <div>
          <br> <br> <hr>
          <p id="demo"></p>
          
          </div>
      </div>
    </div>
    <footer class="footer">
      <p>Powered by US</a></p>
    </footer>
  </div>
</body>
</html>
