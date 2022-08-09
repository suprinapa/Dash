<!doctype html>
<html lang="en" class="no-js">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<title>
	<g:layoutTitle default="eSewa"/>
	</title>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
	<link href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css" rel="stylesheet" />
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
		<nav class="col-sm-3 col-md-2 d-none d-sm-block bg-light sidebar sidebar_custom">
			<ul class="list-group">
				<li class="list-group-item"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li class="list-group-item"><g:link controller="esewaRelease" action="index">eSewa Releases</g:link></a></li>
			</ul>
			<div class="menu">
				<div id="item">Release Domains</div>
				<div id="submenu">
					<g:link controller="releaseEnvironment" action="index"><g:message
							code="release.Environment" /></g:link>
					<g:link controller="esewaComponents" action="index"><g:message
							code="esewa.Components" /></g:link>
					<g:link controller="releaseNotes" action="index"><g:message
							code="releaseNotes.label" /></g:link>
					<g:link  controller="releaseChecklist" action="index"><g:message
							code="releaseChecklist.label" /></g:link>
					<g:link  controller="esewaEvents" action="index"><g:message
							code="esewa.Events" /></g:link>
				</div>
			</div>
			<br>
		</nav>

		<main role="main" class="col-sm-10 ml-sm-auto col-md-15 pt-3">
			<g:layoutBody/>
		</main>
	</div>
</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.1.1.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
</body>
</html>