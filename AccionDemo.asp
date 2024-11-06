<%
' Set the connection string
Dim connString, conn

connString = "Driver={SQL Server};Server=ALIPL3117;Database=Demo;UID=sa;PWD=Accionlabs@123;"

' Create a connection object
Set conn = Server.CreateObject("ADODB.Connection")

' Open the connection
On Error Resume Next
conn.Open connString

' Check for errors
If Err.Number <> 0 Then
    Response.Write("Connection Error occured: " & Err.Description)
    Err.Clear
Else
    Response.Write("Connected to SQL Server database successfully.")
End If

' Close the connection
conn.Close
Set conn = Nothing
%>
