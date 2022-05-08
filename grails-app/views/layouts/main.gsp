<!doctype html>
<html lang="en" class="no-js">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

	<title>
	<g:layoutTitle default="ESewa"/>
	</title>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<asset:link rel="icon" href="logo.png" type="image/x-png"/>

	<asset:stylesheet src="application.css"/>

	<g:layoutHead/>
</head>

<body>
<nav class="navbar navbar-expand-lg navbar-dark navbar-static-top" role="navigation">
	<a class="navbar-brand custom_header" href="/Dash"> ESEWA DASHBOARD</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarContent" aria-controls="navbarContent" aria-expanded="false" aria-label="Toggle navigation">
	</button>

	<div class="collapse navbar-collapse" aria-expanded="false" style="height: 0.8px;" id="navbarContent">
	</div>

</nav>

<g:layoutBody/>

<div class="footer" role="contentinfo"></div>

<div id="spinner" class="spinner" style="display:none;">
	<g:message code="spinner.alt" default="Loading&hellip;"/>
</div>

<asset:javascript src="application.js"/>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>