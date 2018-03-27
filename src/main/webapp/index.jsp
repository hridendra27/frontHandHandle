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
  function datamodel(){
	  
	  var data = JSON.stringify({
		  "data1": ""+document.getElementById('data1').value+"",
		  "data2": ""+document.getElementById('data2').value+""
		  
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
    <form class="work" action="http://localhost:8080/frontHandHandle/tasks" method="post">
      <input type="text" id="data1" name="data1" value="data1">
      <input type="text" id="data2" name="data2" value="data2">
      
      <button type="submit" name="button">cdsc</button>
    <button type="button" name="button" onclick="UserAction()">Submit</button>
    <button type="button" onclick ="datamodel()"> HttpWALA</button>
    </form>
  </body>
</html>
