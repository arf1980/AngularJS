<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<title>MyFirstWebApplication</title>
<spring:url value="/webjars/" var="webjarsPath" />
<spring:url value="/resources/" var="resourcesPath" />

<script src="${webjarsPath}angularjs/1.2.16/angular.min.js"></script>


<script type="text/javascript">
	MFA = angular.extend(typeof MFA === 'undefined' ? {} : MFA, {
		contextPath : '<spring:url value="/" />'
	});
</script>

<script type="text/javascript" src="${resourcesPath}angular/app.js"
	charset="UTF-8"></script>
<script type="text/javascript" src="${resourcesPath}angular/services.js"
	charset="UTF-8"></script>
<script type="text/javascript"
	src="${resourcesPath}angular/controllers.js" charset="UTF-8"></script>

<link href="${webjarsPath}bootstrap/3.1.1/css/bootstrap.min.css"
	rel="stylesheet">

</head>

<body ng-app="myFstApp" ng-controller="applicazioniController"
	style="padding-top: 70px;">
	<h2>Hello World!</h2>


	<!-- Fixed navbar -->
	<div class="navbar navbar-default navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Applicazioni JS</a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Home</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">Server <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li class="divider"></li>
							<li class="dropdown-header">Nav header</li>
							<li><a href="#">Separated link</a></li>
							<li><a href="#">One more separated link</a></li>
						</ul></li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>

	<div class="container">
		<div class="jumbotron">

			<table>
				<thead>
					<tr>
						<th colspan="2">Applicazioni</th>
					</tr>
				</thead>
				<tbody>
					<tr ng-repeat="applicazione in applicazioniList">
						<td>{{applicazione.nome}}</td>
						<td>{{applicazione.web}}</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<script src="${webjarsPath}jquery/2.1.1/jquery.min.js"></script>
	<script src="${webjarsPath}bootstrap/3.1.1/js/bootstrap.min.js"></script>


</body>
</html>
