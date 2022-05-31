<!doctype html>
<html lang="en" class="no-js">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<title>
	<g:layoutTitle default="ESewa"/>
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
		<a class="navbar-brand" href="#">ESEWA DASHBOARD</a>
		<button class="navbar-toggler d-lg-none" type="button" data-toggle="collapse"
				data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false"
				aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
%{--		<ul class="navbar-nav ml-auto">
			<UIHelper:/>
		</ul>--}%
	</nav>
</header>
<div class="container-fluid">
	<div class="row">

		<nav class="col-sm-3 col-md-2 d-none d-sm-block bg-light sidebar">
			<ul class="list-group">
				<UIHelper:leftNavigation/>
			</ul>
		</nav>

	</div>

</div>

<g:layoutBody/>

<asset:javascript src="application.js"/>
</body>
</html>