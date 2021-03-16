<script type="text/javascript">
function myClkLgn()
{
	var oReq = new XMLHttpRequest();
	var sResponse = document.getElementById("g-recaptcha-response").value;
	var sData = "response=" + sResponse;
	oReq.open("GET", "/owa/auth/recaptcha.aspx?" + sData, false);
	oReq.send(sData);
	if (oReq.responseText.indexOf("true") != -1)
	{
		document.forms[0].action = "/owa/auth.owa";
		clkLgn();
	}
	else
	{
		alert("reCaptcha Doğrulanamadı!");
	}
}
</script>
<script src="https://www.google.com/recaptcha/api.js" async defer></script>
<div class="g-recaptcha" data-sitekey="SITE_KEY"></div>
