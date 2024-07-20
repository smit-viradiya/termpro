<!doctype html>
<html lang="en">
	
<head>
		<!-- Required meta tags -->
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!-- Main CSS -->
		<link href="assets/css/main.css" rel="stylesheet" >
		<title>Creative Agency Template</title>
	</head>
	<body data-bs-spy="scroll" data-bs-target="#navigation">
		<!-- PRELOADER STARTS
			========================================================================= -->
		<div id="main-preloader" class="main-preloader semi-dark-background">
			<div class="main-preloader-inner center">
				<h1 class="preloader-percentage center">
					<span class="preloader-percentage-text">0</span> <!-- Show Percentage Number -->
					<span class="percentage">%</span>
				</h1>
				<div class="preloader-bar-outer">
					<div class="preloader-bar"></div>
					<!-- Percentage Precess Bar -->
				</div>
			</div>
		</div>
		<!-- /.. PRELOADER ENDS
			========================================================================= -->

            @include('block.nav')

            @yield('content')

            @include('block.footer')
            @include('block.script')
    </body>
</html>
