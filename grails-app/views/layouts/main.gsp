<!doctype html>
<html lang="en" class="no-js">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<title>
	<g:layoutTitle default="eSewa"/>
	</title>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<asset:link rel="icon" href="logo.png" type="image/x-png"/>
	<asset:stylesheet src="application.css"/>
	<asset:javascript src="application.js"/>
	<g:layoutHead/>
</head>

<body>

<header>
	<nav class="navbar navbar-expand-lg navbar-dark fixed-top bg-dark rounded">
		<a class="navbar-brand" href="#">Release Management System</a>
	</nav>
</header>

<div class="container-fluid">
	<div class="row">
		<nav class="col-sm-3 col-md-2 d-none d-sm-block bg-light sidebar">
			<ul class="list-group">
				<li class="list-group-item"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li class="list-group-item"><g:link controller="esewaRelease" action="index">eSewa Releases</g:link></a></li>
			</ul>
		</nav>

		<main role="main" class="col-sm-10 ml-sm-auto col-md-15 pt-3">
			<g:layoutBody/>
		</main>
	</div>
</div>
</body>
</html>