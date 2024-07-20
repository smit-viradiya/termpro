@extends('layout.app')
@section('content')
		<!-- PORTFOLIO STARTS
			========================================================================= -->
		<section id="portfolio" class="portfolio pb-0">
			<div class="container-fluid">
				<div class="row">
					<div class="col-12">
						<div class="herotext text-center">
							<h6>/Projects</h6>
							<h2>Our Recent Work</h2>
							<h5 class="pt-2">There are three responses to a piece of design – <br class="d-none d-md-block">yes, no, and WOW! Wow is the one to aim for.</h5>
						</div>
					</div>
				</div>
				<div class="row pt-5 pb-3">
					<!-- Portfolio Nav Starts -->
					<div class="col-12">
						<div id="options">
							<ul id="filters" class="option-set clearfix" data-option-key="filter">
								<li><a href="#filter" data-option-value="*" class="selected">ALL</a></li>
								@php
									$category = ['Web Design','Branding', 'Mobile App'];
								@endphp
								@foreach ($category as $item)
									<li><a href="#filter" data-option-value=".{{strtolower(str_replace(' ','',$item))}}">{{$item}}</a></li>
								@endforeach
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="container-fluid">
				@php
					$projects = \App\Models\Project::all();
				@endphp
				<div class="row">
					<!-- Portfolio Nav Ends -->
					<div class="col-12">
						<!-- Portfolio Thumbs Starts -->
						<div class="make4columns portfolio-grid">
							@foreach ($projects as $item)
							<!-- Project 1 Starts -->
							<figure class="item {{strtolower(str_replace(' ','',$item->category))}}">
								<div class="picture">
									<img src="{{asset('storage/'.$item->featured_image)}}" alt="">                       
									<!-- Picture Overlay Starts -->													
									<div class="text-overlay">
										<div class="category">{{$item->category}}</div>
										<h1><a class="image-popup-vertical-fit" href="{{asset('storage/'.$item->featured_image)}}" title="{{$item->project_title}}">{{$item->project_title}}</a></h1>
									</div>
									<div class="icon-overlay">
										<div class="icon"><a class="image-popup-vertical-fit" href="{{asset('storage/'.$item->featured_image)}}" title="{{$item->project_title}}"><i class="las la-expand-arrows-alt"></i></a></div>
									</div>
									<!-- Picture Overlay Ends -->
								</div>
							</figure>
							<!-- Project 1 Ends --> 								
							@endforeach
							
						</div>
						<!-- Portfolio Thumbs Ends -->	
					</div>
				</div>
			</div>
		</section>
		<!-- /. PORTFOLIO ENDS
			========================================================================= -->
	@endsection