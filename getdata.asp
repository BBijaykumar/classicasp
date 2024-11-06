<%@ Language="VBScript" %>
<%
Response.ContentType = "application/json"

' Create a sample data array
Dim dataArray
dataArray = "[{""name"":""sowjanya"",""value"":2},{""name"":""another"",""value"":3}]"

' Create a JSON object
Dim jsonResponse
jsonResponse = "{""data"":" & dataArray & "}"

' Output the JSON response
Response.Write(jsonResponse)
%>
