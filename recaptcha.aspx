<% @ Page AspCompat=True Language = "VB" %>
<%
Dim strPrivateKey As String = "SECRET_KEY"
Dim strResponse = Request("response")
Dim objWinHTTP As Object
objWinHTTP = Server.CreateObject("WinHTTP.WinHTTPRequest.5.1")
objWinHTTP.Open("POST", "https://www.google.com/recaptcha/api/siteverify", False)
objWinHTTP.SetRequestHeader("Content-type", "application/x-www-form-urlencoded")
Dim strData As String = "secret=" & strPrivateKey & _
"&response=" & strResponse
objWinHTTP.Send(strData)
Dim strResponseText = objWinHTTP.ResponseText
Response.Write(strResponseText)
%>
