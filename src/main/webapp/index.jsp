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
  jasondata="";

  function UserAction() {
    var xhttp = new XMLHttpRequest();
    xhttp.open("POST", "http://localhost:8080/frontHandHandle/checkl", true);
  //  xhttp.setRequestHeader("Content-type", "application/json");
    xhttp.send();
    //var response = JSON.parse(xhttp.responseText);
}
  </script>
  <body>
    <form class="work" action="http://localhost:8080/frontHandHandle/tasks" method="post">
      <input type="text" id="id" name="data1" value="data1">
      <button type="submit" name="button">cdsc</button>
    <button type="button" name="button" onclick="UserAction()">Submit</button>
    <button type="button" onclick ="/checkl"> HttpWALA</button>
    </form>
  </body>
</html>
