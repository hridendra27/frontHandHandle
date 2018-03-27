<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
  <head>
    <meta charset="utf-8">
    <title>New App </title>
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
  
  </script>
  <body>
   <!--  <form class="work" action="http://localhost:8080/frontHandHandle/tasks" method="post">
      <input type="text" id="data1" name="data1" value="data1">
      <input type="text" id="data2" name="data2" value="data2">
      
      <button type="submit" name="button">cdsc</button>
    <button type="button" name="button" onclick="UserAction()">Submit</button>
    <button type="button" onclick ="datamodel()"> HttpWALA</button>
    </form> -->
    
    
    
  <div class="container-fulid" >
  <center>  <h1 id ="helo"> Hello Curd Operation </h1> </center>

    <div class="row">
      <div class="col-xs-12" id="canvas" style="background-color:lightslategrey" >
        <br>
          <form  "class="form-horizontal" method="post">
            <input type="button" name="button" value="button " onclick="jsonRequest()">

              <br><br>Email<br>      <input type="email" class="form-control" name="email" id="email" placeholder="We'll never share your email with anyone else" style="width:450px;">
              <br><br>Password<br>   <input type="password" class="form-control" name="password" id="password" placeholder="Enter password" style="width:450px;">
              <br><br>DateOfBirth<br><input type="date" class ="form-control"name="dob" id ="dob" style="width:450px">
              <br><br>ROLLNO<br>     <input type="text" class="form-control" name="rollno"id="rollno" placeholder="Enter rollno" style="width:450px;">
          	  <br><br>Firstname<br>  <input type="text" class="form-control" name="firstname"id="firstname" placeholder="Enter firstname" style="width:450px;">
              <br><br>Lastname <br>  <input type="text" class="form-control"name="lastname" id="lastname" placeholder="Enter lastname" style="width:450px;">
              <br><br>mobileno<br>   <input type="text" class="form-control"name="mobileno" id="mobileno" placeholder="Enter mobileno" style="width:450px;">
              <br><br>Address  <br>  <textarea class="form-control" rows="3" name="address"id="address" style="width:450px;"></textarea>
              <br><br>  <input type="button" onclick="dataModel()" value ="Click"> Click </input>
            </form>
      </div>
    </div>
    <footer class="footer">
      <p>Powered by US</a></p>
    </footer>
  </div>
  </body>
</html>
